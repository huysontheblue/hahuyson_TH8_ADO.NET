using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace thuchanh8_9
{
    public partial class Nhap_sua_xoaKhoaDaoTao : System.Web.UI.Page
    {
        /*string strCon = @"Data Source=HUYSON\SQLEXPRESS;Initial Catalog=th9;Integrated Security=True";
        SqlConnection mySqlConnection;
        SqlCommand mySqlCommand;
        private static string sMaKhoa;
        private static bool modeNew;*/
        private string conStr = "server=HUYSON\\SQLEXPRESS;Initial Catalog=th9;Integrated Security=True";
        private SqlConnection mySqlConnection;
        private SqlCommand mySqlCommand;
        private static string sMaKhoa;
        private static bool modeNew;

        protected void Page_Load(object sender, EventArgs e)
        {
            mySqlConnection = new SqlConnection(conStr);
            mySqlConnection.Open();
            string sSql = "execute LayKhoadaotao";
            mySqlCommand = new SqlCommand(sSql, mySqlConnection);
            SqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader();
            DataTable myDataTable = new DataTable();
            myDataTable.Load(mySqlDataReader);
            GridView1.DataSource = myDataTable;
            GridView1.DataBind();
            SetControl(false);
        }
        protected void SetControl(bool edit)
        {
            txtMaKhoa.Enabled = edit;
            txtTenKhoa.Enabled = edit;
            txtDienThoai.Enabled = edit;
        }
     
        protected void btnThem_Click(object sender, EventArgs e)
        {
            modeNew = true;
            txtMaKhoa.Text = "";
            txtTenKhoa.Text = "";
            txtDienThoai.Text = "";
            SetControl(modeNew);
        }

        protected void btnGhi_Click(object sender, EventArgs e)
        {
            if (txtMaKhoa.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập mã khoa');</script>");
                return;
            }
            if (modeNew)
            {
                string sSql = "execute NhapKhoadaotao @Makhoa, @Tenkhoa, @Phone";
                mySqlCommand = new SqlCommand(sSql, mySqlConnection);
                mySqlCommand.Parameters.Add("@Makhoa", SqlDbType.Int);
                mySqlCommand.Parameters.Add("@Tenkhoa", SqlDbType.NVarChar, 50);
                mySqlCommand.Parameters.Add("@Phone", SqlDbType.NVarChar, 50);
                mySqlCommand.Parameters["@Makhoa"].Value = txtMaKhoa.Text;
                mySqlCommand.Parameters["@Tenkhoa"].Value = txtTenKhoa.Text;
                mySqlCommand.Parameters["@Phone"].Value = txtDienThoai.Text;
                mySqlCommand.ExecuteNonQuery();
            }
            else
            {
                string sSql = "execute SuaKhoadaotao @Makhoa1, @Tenkhoa1, @Phone1";
                mySqlCommand = new SqlCommand(sSql, mySqlConnection);
                mySqlCommand.Parameters.Add("@Makhoa1", SqlDbType.Int);
                mySqlCommand.Parameters.Add("@Tenkhoa1", SqlDbType.NVarChar, 50);
                mySqlCommand.Parameters.Add("@Phone1", SqlDbType.NVarChar, 50);
                mySqlCommand.Parameters["@Makhoa1"].Value = txtMaKhoa.Text;
                mySqlCommand.Parameters["@Tenkhoa1"].Value = txtTenKhoa.Text;
                mySqlCommand.Parameters["@Phone1"].Value = txtDienThoai.Text;
                mySqlCommand.ExecuteNonQuery();
            }
            Response.Redirect("Nhap_sua_xoaKhoaDaoTao.aspx");
             SetControl(false);
        }


        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {

            int row = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "btnSua")
            {
                modeNew = false;
                SetControl(true);
                txtMaKhoa.Text = GridView1.Rows[row].Cells[0].Text;
                txtTenKhoa.Text = GridView1.Rows[row].Cells[1].Text;
                txtDienThoai.Text = GridView1.Rows[row].Cells[2].Text;
                sMaKhoa = txtMaKhoa.Text;
            }
            else if (e.CommandName == "btnXoa")
            {
                int sXoaMakhoa =Convert.ToInt32(GridView1.Rows[row].Cells[0].Text);
                string sSql = "EXECUTE Xoakhoadaotao @Makhoa";
                mySqlCommand = new SqlCommand(sSql, mySqlConnection);
                mySqlCommand.Parameters.Add("@Makhoa", SqlDbType.Int);
                mySqlCommand.Parameters["@Makhoa"].Value = sXoaMakhoa;
                mySqlCommand.ExecuteNonQuery();
                Response.Redirect("Nhap_sua_xoaKhoaDaoTao.aspx");
            }
        }
    }
}
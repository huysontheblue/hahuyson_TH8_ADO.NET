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
    public partial class Timkiem_sua_xoa : System.Web.UI.Page
    {
        string conStr = "server=HUYSON\\SQLEXPRESS;Initial Catalog=th9;Integrated Security=True";
        SqlConnection mySqlConnection;
        SqlCommand mySqlCommand;
        protected void Page_Load(object sender, EventArgs e)
        {
            mySqlConnection = new SqlConnection(conStr);
            mySqlConnection.Open();
            if (!IsPostBack)
            {
                string sSQL = "SELECT * FROM Khoadaotao ORDER BY TenKhoa";
                mySqlCommand = new SqlCommand(sSQL, mySqlConnection);
                SqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader();
                DataTable myDataTable = new DataTable();
                myDataTable.Load(mySqlDataReader);
                cboKhoadaotao.DataSource = myDataTable;
                cboKhoadaotao.DataValueField = "Makhoa";
                cboKhoadaotao.DataTextField = "Tenkhoa";
                cboKhoadaotao.DataBind();
                cboKhoadaotao_SelectedIndexChanged1(sender, e);
            }
        }
        protected void cboKhoadaotao_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string sSQL = "SELECT * FROM SinhVien WHERE MaKhoa=N'" +cboKhoadaotao.SelectedValue.ToString() + "' ORDER BY MaSV";
            mySqlCommand = new SqlCommand(sSQL, mySqlConnection);
            SqlDataReader mySqlDataReader =mySqlCommand.ExecuteReader();
            DataTable myDataTable = new DataTable();
            myDataTable.Load(mySqlDataReader);
            GridView1.DataSource = myDataTable;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int row = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "btnSua")
            {
                txtLopBC.Text = GridView1.Rows[row].Cells[1].Text;
                txtMaSV.Text = GridView1.Rows[row].Cells[2].Text;
                txtHoTen.Text = GridView1.Rows[row].Cells[3].Text;
                txtNgaySinh.Text = GridView1.Rows[row].Cells[4].Text;
                txtDiaChi.Text = GridView1.Rows[row].Cells[5].Text;
            }
            else if (e.CommandName == "btnXoa")
            {
                int sXoaSV = Convert.ToInt32(GridView1.Rows[row].Cells[2].Text);
                string sSql = "EXECUTE XoaSinhVien @MaSV";
                mySqlCommand = new SqlCommand(sSql, mySqlConnection);
                mySqlCommand.Parameters.Add("@MaSV", SqlDbType.Int);
                mySqlCommand.Parameters["@MaSV"].Value = sXoaSV;
                mySqlCommand.ExecuteNonQuery();
                Response.Redirect("Timkiem_sua_xoaSV.aspx");
            }
        }
        protected void btnGhi_Click(object sender, EventArgs e)
        {
            if (txtMaSV.Text.Trim() == "") return;
            string sMakhoa = cboKhoadaotao.SelectedValue;
            string sSQL = "UPDATE Sinhvien SET Makhoa = N'" + sMakhoa + "', LopBC = N'" + txtLopBC.Text + "', Hoten = N'" + txtHoTen.Text + "', Ngaysinh= N'" + txtNgaySinh.Text + "', Diachi = N'"+ txtDiaChi.Text + "' WHERE MaSV = N'" + txtMaSV.Text.Trim() + "'";
            mySqlCommand = new SqlCommand(sSQL, mySqlConnection);
            mySqlCommand.ExecuteNonQuery();
            cboKhoadaotao_SelectedIndexChanged1(sender, e);
        }
    }
}
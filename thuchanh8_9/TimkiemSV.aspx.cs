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
    public partial class TimkiemSV : System.Web.UI.Page
    {

        string sqlStr = "server=HUYSON\\SQLEXPRESS;Initial Catalog=th9;Integrated Security=True";
        string mySql = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnTim_Click(object sender, EventArgs e)
        {
            SqlConnection myConnection = new SqlConnection(sqlStr);
            myConnection.Open();
            if (ddlType.SelectedValue == "1")
            {
                mySql = "SELECT MaSV, HoTen, TenKhoa FROM SinhVien s JOIN KhoaDaoTao k on s.MaKhoa = k.MaKhoa WHERE MaSV = " + txtTim.Text;
            }
            else if (ddlType.SelectedValue == "2")
            {
                mySql = "SELECT MaSV, HoTen, TenKhoa FROM SinhVien s JOIN KhoaDaoTao k on s.MaKhoa = k.MaKhoa WHERE HoTen like N'%" + txtTim.Text + "%'";
            }
            SqlCommand sqlCommand = new SqlCommand(mySql, myConnection);
            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(dataReader);
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int row = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "btnChiTiet")
            {
                int id =Convert.ToInt32(GridView1.Rows[row].Cells[0].Text);
                SqlConnection myConnection = new SqlConnection(sqlStr);
                myConnection.Open();
                string mySql = "select TenMon, NamHK from MonHoc mh join DangKyHoc dk on mh.MaMon=dk.MaMon join SinhVien sv on sv.MaSV=dk.MaSV where sv.MaSV  =" + id;
                SqlCommand sqlCommand = new SqlCommand(mySql, myConnection);
                SqlDataReader dataReader = sqlCommand.ExecuteReader();
                DataTable dataTable = new DataTable();
                dataTable.Load(dataReader);
                GridView2.DataSource = dataTable;
                GridView2.DataBind();
            }
        }
    }
}
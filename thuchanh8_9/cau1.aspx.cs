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
    public partial class cau1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNhap_Click(object sender, EventArgs e)
        {
            string username = t1.Text;
            string password = t2.Text;
            if (username == "huyson" & password == "huyson123")
            {
                HttpCookie cookie = new HttpCookie("cookie");
                cookie.Value = username;
                cookie.Expires = DateTime.Now.AddDays(15);
                Response.Cookies.Add(cookie);
                Response.Redirect("Endlogin.aspx");
            }
            else
                Response.Write("<script>alert('Bạn đã nhập sai tài khoản');</script>");
 
            /*string sqlConnStr = "Data Source=HUYSON\\SQLEXPRESS;Initial Catalog=th8;Integrated Security=True";
            SqlConnection connection = new SqlConnection(sqlConnStr);
            connection.Open();
            string sqlQuery = "SELECT * FROM User1 WHERE UserName = '" + t1.Text + "' AND PassWord='" + t2.Text + "'";
            SqlCommand sqlCommand = new SqlCommand(sqlQuery, connection);
            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            if (dataReader.HasRows) {
                Session["username"] = t1.Text;
                Response.Redirect("Endlogin.aspx");
            } else {
                Response.Write("<script>alert('Bạn đã nhập sai tài khoản');</script>");
            }*/
        }
    }
}
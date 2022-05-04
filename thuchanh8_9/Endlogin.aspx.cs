using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace thuchanh8_9
{
    public partial class Endlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["cookie"];
            lblCookie.Text = "Xin chào bạn :  " + cookie.Value;
        }
    }
}
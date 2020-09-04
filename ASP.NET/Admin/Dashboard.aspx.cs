using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            Response.Write(" <script> alert('Chào mừng bạn đến với trang quản trị!') </script> ");
        }
    }
}
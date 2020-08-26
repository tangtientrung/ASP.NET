using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace ASP.NET.Admin
{
    public partial class Account : System.Web.UI.Page
    {
        UserBUS usBus = new UserBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (Request.QueryString["Name"] == null)
                {

                    grvUser.DataSource = usBus.SearchUser(txtTim.Text);
                    grvUser.DataBind();
                }
                
            }
            else
            {
                
                grvUser.DataSource = usBus.GetAllUser();
                grvUser.DataBind();
            }
        }
    }
}
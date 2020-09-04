using BUS;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Admin
{
    public partial class AdminMasterPage : System.Web.UI.MasterPage
    {
        UserBUS userBUS = new UserBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Session["Id"].ToString());
            string name = "";
            foreach (DataRow row in userBUS.GetUser(id).Rows)
            {
                name = row[1].ToString();
            }
            lbName.Text = name;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Login/Login.aspx");
        }
        
    }
}
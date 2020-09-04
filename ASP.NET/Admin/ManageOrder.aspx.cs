using BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Admin
{
    public partial class ManageOrder : System.Web.UI.Page
    {
        OrderBUS orderBUS = new OrderBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(!IsPostBack)
            {
                grvOrder.DataSource = orderBUS.GetAllOrder();
                grvOrder.DataBind();
            }
        }

        protected void btnLoc_Click(object sender, EventArgs e)
        {
            //string lc = "";
            if(ddlLc.SelectedValue== "Tour thanh toán")
            {
                grvOrder.DataSource = orderBUS.GetAllEnabelOrder();
                grvOrder.DataBind();
            }
            else if (ddlLc.SelectedValue == "Tour chưa thanh toán")
            {
                grvOrder.DataSource = orderBUS.GetAllDisableOrder();
                grvOrder.DataBind();
            }
        }
    }
}
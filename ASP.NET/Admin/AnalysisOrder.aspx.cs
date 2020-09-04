using BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Admin
{
    public partial class AnalysisOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        OrderBUS orderBUS = new OrderBUS();
        protected void btnLoc_Click(object sender, EventArgs e)
        {
            if(txtBD.Text==""||txtKT.Text=="")
            {
                

            }
            else
            {
                grvOrder.DataSource = orderBUS.AnalysisOrder(Convert.ToDateTime(txtBD.Text), Convert.ToDateTime(txtKT.Text));
                grvOrder.DataBind();
                grvMoney.DataSource = orderBUS.TotalMoney(Convert.ToDateTime(txtBD.Text), Convert.ToDateTime(txtKT.Text));
                grvMoney.DataBind();
            }
            
            
        }
    }
}
using BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Admin
{
    public partial class HotTour : System.Web.UI.Page
    {
        OrderBUS orderBus = new OrderBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            grvHotTour.DataSource = orderBus.HotTour();
            grvHotTour.DataBind();
        }
    }
}
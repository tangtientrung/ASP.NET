using BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Admin
{
    public partial class Tour : System.Web.UI.Page
    {
        TourBUS tourBus = new TourBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (IsPostBack)
            {
                if (Request.QueryString["TourName"] == null)
                {

                    grvTour.DataSource = tourBus.SearchTour(txtTim.Text);
                    grvTour.DataBind();
                }

            }
            else
            {

                grvTour.DataSource = tourBus.GetAllTour();
                grvTour.DataBind();
            }

        }
    }
}
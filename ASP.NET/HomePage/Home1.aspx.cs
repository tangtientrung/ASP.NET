using BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.HomePage
{
    public partial class Home1 : System.Web.UI.Page
    {
        public string RenderControlToHtml(Control ControlToRender)
        {
            if (this.Form.Controls.Contains(ControlToRender))
            {
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                System.IO.StringWriter stWriter = new System.IO.StringWriter(sb);
                System.Web.UI.HtmlTextWriter htmlWriter = new System.Web.UI.HtmlTextWriter(stWriter);
                ControlToRender.RenderControl(htmlWriter);
                //ControlToRender.RenderControl(htmlWriter);
                return sb.ToString();
            }
            return string.Empty;
        }
        TourBUS tourBus = new TourBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
          //  DataList1.DataSource = tourBus.GetAllTour();
            //DataList1.DataBind();
        }

        protected void btnleft_Click(object sender, EventArgs e)
        {
            string url = Image111.ImageUrl;
            Image111.ImageUrl = Image2.ImageUrl;
            Image2.ImageUrl = Image3.ImageUrl;
            Image3.ImageUrl = Image4.ImageUrl;
            Image4.ImageUrl = Image5.ImageUrl;
            Image5.ImageUrl = Image6.ImageUrl;
            Image6.ImageUrl = Image7.ImageUrl;
            Image7.ImageUrl = Image8.ImageUrl;
            Image8.ImageUrl = Image9.ImageUrl;
            Image9.ImageUrl = Image10.ImageUrl;
            Image10.ImageUrl = Image11.ImageUrl;
            Image11.ImageUrl = Image12.ImageUrl;
            Image12.ImageUrl = url;

        }

        protected void btnright_Click(object sender, EventArgs e)
        {
            string url = Image12.ImageUrl;
            Image12.ImageUrl = Image11.ImageUrl;
            Image11.ImageUrl = Image10.ImageUrl;
            Image10.ImageUrl = Image9.ImageUrl;
            Image9.ImageUrl = Image8.ImageUrl;
            Image8.ImageUrl = Image7.ImageUrl;
            Image7.ImageUrl = Image6.ImageUrl;
            Image6.ImageUrl = Image5.ImageUrl;
            Image5.ImageUrl = Image4.ImageUrl;
            Image4.ImageUrl = Image3.ImageUrl;
            Image3.ImageUrl = Image2.ImageUrl;
            Image2.ImageUrl = Image111.ImageUrl;
            Image111.ImageUrl = url;
        }
    }
}
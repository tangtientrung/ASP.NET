using BUS;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Admin
{
    public partial class AddPlace : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        PlaceBUS placeBus = new PlaceBUS();

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string countryId = "";
            if (ddlCountry.SelectedValue == "Bắc")
            {
                countryId = "MBVN";

            }
            else if (ddlCountry.SelectedValue == "Nam")
            {
                countryId = "MNVN";
            }
            else
            {
                countryId = "MTVN";
            }
            PlaceDTO place = new PlaceDTO(
                txtPlaceId.Text,
                txtPlaceName.Text,
                countryId
                );
            
            placeBus.InsertPlace(place);
        }
    }
}
﻿using BUS;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Admin
{
    public partial class AddForeginPlace : System.Web.UI.Page
    {
        CountryBUS countryBUS = new CountryBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddlCountry.DataSource=countryBUS.SelectAllCountry();
                
                ddlCountry.DataTextField = "CountryName";
                ddlCountry.DataValueField = "CountryId";
                ddlCountry.DataBind();
            }
        }
        PlaceBUS placeBus = new PlaceBUS();
        protected void btnThem_Click(object sender, EventArgs e)
        {
            PlaceDTO place = new PlaceDTO(
                txtPlaceId.Text,
                txtPlaceName.Text,
                ddlCountry.SelectedValue
                );

            placeBus.InsertPlace(place);
        }
    }
}
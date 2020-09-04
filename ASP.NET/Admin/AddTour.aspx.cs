using BUS;
using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Admin
{
    public partial class AddTour : System.Web.UI.Page
    {
        TourDTO tour = new TourDTO();
        TourBUS tourBus = new TourBUS();
        string tourId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Id"] != null)
            {
                tourId = Request.QueryString["Id"].ToString();
                if (!IsPostBack)
                {
                    foreach (DataRow row in tourBus.GetTour(tourId).Rows)
                    {
                        txtId.Text = row[0].ToString();
                        txtName.Text = row[2].ToString();
                        txtDescription.Text = row[3].ToString();
                        txtPrice.Text = row[4].ToString();
                        txtDeparture.Text = row[5].ToString();
                        txtDestination.Text = row[6].ToString();
                        txtTime.Text = row[7].ToString();
                        ddlVehicle.SelectedValue = row[8].ToString();
                        txtSchedule.Text = row[9].ToString();
                        ddlPlace.SelectedValue = row[10].ToString();
                        
                        //txtUserName.Text = user.RoleId.ToString();
                        if (row[11].ToString() == "True")
                        {
                            rbStatus.SelectedValue = "Enable";
                        }
                        else
                        {
                            rbStatus.SelectedValue = "Disable";
                           
                        }
                    }
                    
                }
            }
            if (Request.QueryString["Ids"] != null)
            {

                if (!IsPostBack)
                {
                    tourBus.DeleteTour(Request.QueryString["Ids"]);
                    Response.Redirect("Tour.aspx");
                }
            }
        }
        public void Save()
        {
            string strFilePath;
            if(fileUploadAnh.FileName!="")
            {
                strFilePath = Server.MapPath(@"../Image/Tour1/" + fileUploadAnh.FileName);
                fileUploadAnh.PostedFile.SaveAs(strFilePath);
            }
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            if(tourId=="")
            {
                string status = "";
                if(rbStatus.SelectedValue=="Enable")
                {
                    status = "true";
                }
                else
                {
                    status = "false";
                }
                TourDTO tour1 = new TourDTO(
                    txtId.Text,
                    "~/Image/Tour1/"+fileUploadAnh.FileName,
                    txtName.Text,
                    txtDescription.Text,
                    double.Parse(txtPrice.Text),
                    txtDeparture.Text,
                    txtDestination.Text,
                    txtTime.Text,
                    ddlVehicle.SelectedValue,
                    txtSchedule.Text,
                    ddlPlace.SelectedValue,
                    status
                    );
                Save();
                tourBus.InsertTour(tour1);
            }
            else
            {
                string status = "";
                if (rbStatus.SelectedValue == "Enable")
                {
                    status = "true";
                }
                else
                {
                    status = "false";
                }
                Save();
                tourBus.UpdateTour(txtId.Text,
                    "~/Image/Tour1/" + fileUploadAnh.FileName,
                    txtName.Text,
                    txtDescription.Text,
                    double.Parse(txtPrice.Text),
                    txtDeparture.Text,
                    txtDestination.Text,
                    txtTime.Text,
                    ddlVehicle.SelectedValue,
                    txtSchedule.Text,
                    ddlPlace.SelectedValue,
                    status);
            }
        }
    }
}
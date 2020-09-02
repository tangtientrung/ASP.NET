using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
using System.Data;

namespace ASP.NET.Admin
{
    public partial class AddUser : System.Web.UI.Page
    {
        UserBUS usBUS = new UserBUS();
        
        int userId=0;
        //string userName;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Id"] != null)
            {
                userId = int.Parse(Request.QueryString["Id"]);
                if (!IsPostBack)
                {
                    foreach (DataRow row in usBUS.GetUser(userId).Rows)
                    {
                        txtUserName.Text = row[1].ToString();
                        txtEmail.Text = row[2].ToString();
                        txtAddress.Text = row[4].ToString();
                        txtPhone.Text = row[3].ToString();
                        if(row[6].ToString()=="Enable")
                        {
                            rbStatus.SelectedValue = "Enable";
                        }   
                        else
                        {
                            rbStatus.SelectedValue = "Enable";
                        }
                        //txtUserName.Text = user.RoleId.ToString();
                        if (int.Parse(row[5].ToString()) == 1)
                        {
                            ddlRole.SelectedIndex = 0;
                        }
                        else
                        {
                            ddlRole.SelectedIndex = 1;
                        }
                        
                    }
                   /* List<UserDTO> dsUser = usBUS.GetUser(userId);
                    foreach (UserDTO user in dsUser)
                    {
                        userName = user.UserName;
                        txtEmail.Text = user.Email;
                        txtAddress.Text = user.Address;
                        txtPhone.Text = user.Phone;
                        txtTrangThai.Text = user.Status.ToString();
                        //txtUserName.Text = user.RoleId.ToString();
                        if (user.RoleId == 1)
                        {
                            ddlRole.SelectedIndex = 0;
                        }
                        else
                        {
                            ddlRole.SelectedIndex = 1;
                        }
                    }
                    txtUserName.Text = userName;*/
                }
            }
            if (Request.QueryString["Ids"] != null)
                {

                    if (!IsPostBack)
                    {
                        usBUS.DeleteUser(int.Parse(Request.QueryString["Ids"]));
                        Response.Redirect("Account.aspx");
                    }
                }       
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if(userId==0)
            {

                string userName = txtUserName.Text;
                string email = txtEmail.Text;
                string phone = txtPhone.Text;
                string address = txtAddress.Text;
                int roleId = int.Parse(ddlRole.SelectedValue);
                string status ="";
                if(rbStatus.SelectedValue=="Enable")
                {
                    status = "true";
                }
                else
                {
                    status = "false";
                }
                UserDTO user = new UserDTO(userName, email, phone, address, roleId, status);
                usBUS.InsertUser(user);

            }
            else
            {
                //txtUserName.Text = "";
                string userName = txtUserName.Text;
                string email = txtEmail.Text;
                string phone = txtPhone.Text;
                string address = txtAddress.Text;
                int roleId = int.Parse(ddlRole.SelectedValue);
                string status = "";
                if (rbStatus.SelectedValue == "Enable")
                {
                    status = "true";
                }
                else
                {
                    status = "false";
                }


                //UserDTO user = new UserDTO(userName, email, phone, address, roleId, status);
                usBUS.UpdateUser(userName, email, phone, address, roleId, status, userId);
                Response.Redirect("Account.aspx");
                //Response.Write(""+ userName);
            }
        }

        
    }
}
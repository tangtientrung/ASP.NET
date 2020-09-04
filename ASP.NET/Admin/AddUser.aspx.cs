using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
using System.Data;
using System.Security.Cryptography;
using System.Text;

namespace ASP.NET.Admin
{
    public partial class AddUser : System.Web.UI.Page
    {
        UserBUS usBUS = new UserBUS();

        int userId = 0;
        public static string pass = "asp.net";
        public static string Encrypt(string Message)

        {

            byte[] Results;

            System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();

            // Buoc 1: Bam chuoi su dung MD5

            MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();

            byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(pass));

            // Step 2. Tao doi tuong TripleDESCryptoServiceProvider moi

            TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();

            // Step 3. Cai dat bo ma hoa

            TDESAlgorithm.Key = TDESKey;

            TDESAlgorithm.Mode = CipherMode.ECB;

            TDESAlgorithm.Padding = PaddingMode.PKCS7;

            // Step 4. Convert chuoi (Message) thanh dang byte[]

            byte[] DataToEncrypt = UTF8.GetBytes(Message);

            // Step 5. Ma hoa chuoi

            try

            {

                ICryptoTransform Encryptor = TDESAlgorithm.CreateEncryptor();

                Results = Encryptor.TransformFinalBlock(DataToEncrypt, 0, DataToEncrypt.Length);

            }

            finally

            {

                // Xoa moi thong tin ve Triple DES va HashProvider de dam bao an toan

                TDESAlgorithm.Clear();

                HashProvider.Clear();

            }

            // Step 6. Tra ve chuoi da ma hoa bang thuat toan Base64

            return Convert.ToBase64String(Results);

        }

        //Hàm giải mã chuỗi

        public static string Decrypt(string Message)

        {

            byte[] Results;

            System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();

            // Step 1. Bam chuoi su dung MD5

            MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();

            byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(pass));

            // Step 2. Tao doi tuong TripleDESCryptoServiceProvider moi

            TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();

            // Step 3. Cai dat bo giai ma

            TDESAlgorithm.Key = TDESKey;

            TDESAlgorithm.Mode = CipherMode.ECB;

            TDESAlgorithm.Padding = PaddingMode.PKCS7;

            // Step 4. Convert chuoi (Message) thanh dang byte[]

            byte[] DataToDecrypt = Convert.FromBase64String(Message);

            // Step 5. Bat dau giai ma chuoi

            try

            {

                ICryptoTransform Decryptor = TDESAlgorithm.CreateDecryptor();

                Results = Decryptor.TransformFinalBlock(DataToDecrypt, 0, DataToDecrypt.Length);

            }

            finally

            {

                // Xoa moi thong tin ve Triple DES va HashProvider de dam bao an toan

                TDESAlgorithm.Clear();

                HashProvider.Clear();

            }

            // Step 6. Tra ve ket qua bang dinh dang UTF8

            return UTF8.GetString(Results);

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Id"] != null)
            {
                userId = int.Parse(Request.QueryString["Id"]);
                if (!IsPostBack)
                {
                    //Response.Write(userId);
                    foreach (DataRow row in usBUS.GetUser(userId).Rows)
                    {
                        txtUserName.Text = row[1].ToString();
                        txtEmail.Text = row[2].ToString();
                        string pass = Decrypt(row[3].ToString());
                        txtPass.Text =pass;
                        
                        txtPhone.Text = row[4].ToString();
                        txtAddress.Text = row[5].ToString();
                        if( row[6].ToString()=="Admin")
                        {
                            ddlRole.SelectedValue = "Admin";

                        }
                        else
                        {
                            ddlRole.SelectedValue = "User";
                        }

                    }
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
            if (userId == 0)
            {

                string userName = txtUserName.Text;
                string email = txtEmail.Text;
                
                string pass = Encrypt(txtPass.Text);
                string phone = txtPhone.Text;
                string address = txtAddress.Text;
                string roleId = ddlRole.SelectedValue;

                bool check = true;
                if(Check(txtUserName))
                {
                    Response.Write("a");
                } 
                else
                {
                    lbUserName.Text = "Bạn phải nhập họ tên";
                    check = false;
                }    
                /*UserDTO user = new UserDTO(userName, email, pass, phone, address, roleId);
                usBUS.InsertUser(user);*/

            }
            else
            {
                string userName = txtUserName.Text;
                string email = txtEmail.Text;
                string pass = Encrypt(txtPass.Text);
                string phone = txtPhone.Text;
                string address = txtAddress.Text;
                string roleId = ddlRole.SelectedValue;


                //UserDTO user = new UserDTO(userName, email, phone, address, roleId, status);
                usBUS.UpdateUser(userName, email, pass, phone, address, roleId, userId);
                Response.Redirect("Account.aspx");
                //Response.Write(""+ userName);
            }
        }

        private bool Check(TextBox textbox)
        {
            bool check = true;
            if(textbox.Text=="")
            {
                check = false;
                //lb.Text = "Bạn phải nhập "+str;
            }
            return check;
        }
    }
}
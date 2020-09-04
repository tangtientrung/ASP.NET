using BUS;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
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
        UserBUS userBus = new UserBUS();

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string email = txtEmail.Text;
            string pass = Encrypt(txtPassword.Text);
            int i = userBus.Login(email, pass).Rows.Count;
            string role = "";
            int id = 0;
            bool check;
            if (Check(txtEmail))
            {

                string regex = @"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$";
                if (Regex.IsMatch(txtEmail.Text, regex))
                {
                    check = true;
                    lbEmail.Text = "";
                }
                else
                {
                    check = false;
                    lbEmail.Text = "Email sai định dạng";
                }
            }
            else
            {
                check = false;
                lbEmail.Text = "Bạn phải nhập email";
            }
            if (Check(txtPassword))
            {
                check = true;
                lbPassword.Text = "";
            }
            else
            {
                check = false;
                lbPassword.Text = "Bạn phải nhập password";
            }
            if (check == true)
            {
                if (i == 0)
                {
                    Response.Write("Đăng nhập sai");
                }
                else
                {

                    foreach (DataRow row in userBus.Login(email, pass).Rows)
                    {
                        role = row[6].ToString();
                        id = int.Parse(row[0].ToString());
                    }
                    Session["Id"] = id;

                    if (role.Trim() == "Admin")
                    {
                        Response.Redirect(@"../Admin/Dashboard.aspx");


                    }
                    else if (role.Trim() == "User")

                    {

                        Response.Redirect(@"../HomePage/Chitiettour.aspx");
                    }
                }
            }
        }

        private bool Check(TextBox textbox)
        {
            bool check = true;
            if (textbox.Text == "")
            {
                check = false;
                //lb.Text = "Bạn phải nhập "+str;
            }
            return check;
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mh = Encrypt("123");
            Response.Write(mh+"/");
            Response.Write(Decrypt(mh));
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
    }
}
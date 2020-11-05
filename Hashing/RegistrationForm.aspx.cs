using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hashing
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_form_Click(object sender, EventArgs e)
        {
            String salt = CreateSalt(10);
            String hashedString = GenerateSHA256Hash(password.Text.ToString(), salt);
            UsernameLabel.Text =  username.Text.ToString();
            PasswordLabel.Text =  password.Text.ToString();
            SaltLabel.Text = salt;
            HashLabel.Text = hashedString;

            //save in DB
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query1 = "insert into hashTable(UserName,PassWord,SaltValue,HashedPassWord) values('" + username.Text.ToString() + "','" + password.Text.ToString() + "','" + salt + "','" + hashedString + "')";
            SqlCommand cmd1 = new SqlCommand(query1,con);
            cmd1.ExecuteNonQuery();
            string query2 = "insert into hashTable_Encrypted_Data(HashedPassWord) values('" +
                hashedString + "')";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.ExecuteNonQuery();
            con.Close();
            //save in DB
        }

        public static String ByteArrayToHexString(byte[] ba)
        {
            StringBuilder hex = new StringBuilder(ba.Length * 2);
            foreach(byte b in ba)
            {
                hex.AppendFormat("{0:x2}", b);
            }
            return hex.ToString();
        }
        public String CreateSalt(int size)
        {
            var rng = new System.Security.Cryptography.RNGCryptoServiceProvider();
            var buffer = new byte[size];
            rng.GetBytes(buffer);
            return Convert.ToBase64String(buffer);
        }
        public String GenerateSHA256Hash(String input,String salt)
        {
            byte[] bytes = System.Text.Encoding.UTF8.GetBytes(input + salt);
            SHA256Managed sha256hashstring = new SHA256Managed();
            byte[] hash = sha256hashstring.ComputeHash(bytes);
            //return hash.ToString();
            return ByteArrayToHexString(hash);
        }

        protected void dbRedirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("DatabaseEntries.aspx");
        }
    }
}
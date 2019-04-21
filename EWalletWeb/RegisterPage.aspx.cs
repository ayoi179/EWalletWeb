using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using System.Data.SqlClient;

namespace EWalletWeb
{
    public partial class RegisterPage : System.Web.UI.Page
    {

        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        string SqlCmd = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=LAPTOP-KOCVU3GB\\TEW_SQLEXPRESS;Initial Catalog=EwalletWeb;Integrated Security=True");
            //Insert SQL Connection Here
        }

       // protected void Button1_Click(object sender, EventArgs e)
       // {
         //   Register objBLL = new Register();

          //  objBLL.RegisterUser(TextBox1.Text, TextBox2.Text);
       // }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Register objBLL = new Register();

            objBLL.RegisterUser(TextBox1.Text, TextBox2.Text);
            Label1.Text = "Register Successfully";
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

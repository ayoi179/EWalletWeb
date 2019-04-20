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
    public partial class OnlineBankingPage : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        string SqlCmd = String.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=LAPTOP-KOCVU3GB\\TEW_SQLEXPRESS;Initial Catalog=EwalletWeb;Integrated Security=True");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OnlineBanking objBLL = new OnlineBanking();

            objBLL.OnlineBankingReg(int.Parse(TextBox1.Text),TextBox2.Text);
            Label1.Text = "Bank register Successfully";
        }
    }
}
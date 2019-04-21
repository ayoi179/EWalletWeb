using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;


namespace DAL
{
    class Register
    {
    }

    public class RegisterDataLayer
    {
        SqlConnection SqlConn = new SqlConnection("Data Source=LAPTOP-KOCVU3GB\\TEW_SQLEXPRESS;Initial Catalog=EwalletWeb;Integrated Security=True");
        //insert SQL CONNECTION

        public void InsertData(string email, string password)
        {
            SqlDataAdapter SqlAdp = new SqlDataAdapter("Insert into Register values('" + email + "','" + password + "')", SqlConn);
            DataTable DT = new DataTable();
            SqlAdp.Fill(DT);
        }

        public object SelectData()
        {
            SqlDataAdapter SqlAdp = new SqlDataAdapter("Select * from Table", SqlConn);
            DataTable DT = new DataTable();
            SqlAdp.Fill(DT);
            return DT;
        }
    }


}

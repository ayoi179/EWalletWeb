using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;


namespace DAL
{
    class OnlineBanking
    {
    }

    public class OnlineBankingDL
    {
        SqlConnection SqlConn = new SqlConnection("Data Source=LAPTOP-KOCVU3GB\\TEW_SQLEXPRESS;Initial Catalog=EwalletWeb;Integrated Security=True");

        public void InsertDataOB(int accNo , string name)
        {
            SqlDataAdapter SqlAdp = new SqlDataAdapter("Insert into Online Banking values('" + accNo + "','" + name + "')", SqlConn);
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

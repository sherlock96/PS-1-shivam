using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Revide
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string Password = tb2.Text.Trim();
            string EmailID = tb3.Text.Trim();
            DateTime UpdatedOn = Convert.ToDateTime(tb4.Text.Trim());
          
            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString))
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }

                using (SqlCommand cmd = new SqlCommand("UpdateAdmin", conn))
                {  //cmd.Parameters.Add("@Username", SqlDbType.VarChar).Value = Username;
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = Password;
                    cmd.Parameters.Add("@EmailID", SqlDbType.VarChar).Value = EmailID;
                    cmd.Parameters.Add("@UpdatedOn", SqlDbType.DateTime).Value = UpdatedOn ;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}
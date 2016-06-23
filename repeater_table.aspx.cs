using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data;
using WebApplication8.DataLayer;

namespace WebApplication8
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        int i = 1;
        protected void Page_Load(object sender, EventArgs e)
        {

            Query q = new Query();
            DataTable dt = q.getUser();
            rptUser.DataSource = dt;
            rptUser.DataBind();
                       
         }    

    }
}

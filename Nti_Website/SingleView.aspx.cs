using Nti_Website.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nti_Website
{
    public partial class SingleView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }


        public static object[] GET(string s1, string s2, string[] s3, string[] s4)
        {

            return Main.GetDBValue(s1, s2, s3, s4);
        }


        private void SetImageUrl()
        {

            DataSet ds = new DataSet();
            SqlConnection sql = new SqlConnection(Database.Connectionstring.con);
            SqlDataAdapter da = new SqlDataAdapter("GetImages", sql);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.Fill(ds, "Files");

            


                 
        }
    }
}
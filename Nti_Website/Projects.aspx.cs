using Nti_Website.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nti_Website
{
    public partial class Projects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string a = Main.GetDBValue("Projects", "Description", new string[] { "ProjName" }, new string[] { "Mohanad" });
            
            //Main.Send(Page, a);
        }

        public static object[] GET(string s1, string s2, string[] s3, string[] s4)
        {

            return Main.GetDBValue(s1,s2,s3,s4);
        }
         
        
    }
}
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nti_Website
{
    public partial class Site1 : System.Web.UI.MasterPage
    {

        public const string _Username = "Nayef";
        public const string _Password = "itghbg123";
         
       



        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null)
            {
                pnl1.Visible = false;
                wlc.Text = "Välkommen Tillbacka: " +  Session["Admin"];
                dash.Visible = true;
                
            }
            else
            {

                pnl1.Visible = true;
                pnl2.Visible = false;
               
            }
        }

        
           


        




        //Enkrypt Password
        public string EncryptPassword(string pass)
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(pass);
            string enkryptedpassword = Convert.ToBase64String(bytes);
            return enkryptedpassword;
        }

        //Dekrypt Password
        public string dekryptPassword(string pass)
        {
            byte[] bytes = Convert.FromBase64String(pass);
            string dekryptpassword = System.Text.Encoding.Unicode.GetString(bytes);
            return dekryptpassword;
        }

        protected void btna_Click(object sender, EventArgs e)
        {


            string Username = usr_box.Text;
            string Password = pass_box.Text;





            // string both = Username + Password;
            if (Username == "" && Password == "")
            {

                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "alert('Fyll i alla fälten!')", true);
                 
            }
            else
            {
                if (Username == _Username && Password == _Password)
                {
                    Session["Admin"] = Username;
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "alert('Fel Info!')", true);
                }
            }
        }

        protected void dash_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}
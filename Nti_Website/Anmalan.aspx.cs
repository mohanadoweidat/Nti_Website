using Nti_Website.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nti_Website
{
    public partial class Anmalan : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void r5a_Click(object sender, EventArgs e)
        {
            if (__Kateg.Value == "Välj: Kategori*")
            {

                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "alert('Var vänlig och välj en kategori!')", true);
                return;
            }
            else
            {
                string variable = hdnfldVariable.Value;
                variable = variable.Replace("$", "\n");
                variable = variable.Replace(",", " ");
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("mohanad.oweidat@elev.ga.ntig.se", "MohanadRambo2000");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Meddelande från en elev/elever!";
                msg.Body = " Meddelande från:" + "\n" + variable +"\n\nE-post: " + "\n" + form_email.Value + "\n" + " \n " +
                   "Meddelande:" + "\n" + form_message.Value + "\n\n" + " Kategorin:" + "\n" + __Kateg.Value + ".";
                msg.From = new MailAddress(form_email.Value);
                msg.To.Add("mohanad.oweidat@elev.ga.ntig.se");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "alert('Meddelandet har skickats');", true);
                smtp.Send(msg);
            }
        }
    }

}
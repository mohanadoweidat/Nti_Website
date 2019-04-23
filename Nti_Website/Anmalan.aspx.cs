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



        //Dosent Work!!
        protected void Button1_Click(object sender, EventArgs e)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("mohanad.oweidat@elev.ga.ntig.se", "MohanadRambo2000");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Meddelande från en elev/elever!";
            msg.Body = " Meddelande från:" + form_name.Value + "," + form_lastname.Value + ", Som har E-post: " + form_email.Value + " \n " +
                form_message.Value + "'";
            msg.From = new MailAddress(form_email.Value);
            msg.To.Add("mohanad.oweidat@elev.ga.ntig.se");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "alert('Meddelandet har skickats');", true);


            try
            {
                smtp.Send(msg);
            }
            catch (Exception ex)
            {
                Response.Write("Mailet Skickades inte" + ex.Message);
            }
        }
    }

}
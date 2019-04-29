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



        // Funkar bara när man väljer 3 deltager för första gången sen funkar det normalt ??!!
        protected void Button1_Click(object sender, EventArgs e)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("mohanad.oweidat@elev.ga.ntig.se", "MohanadRambo2000");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Meddelande från en elev/elever!";
            msg.Body = " Meddelande från:" + "\n" + form_name.Value + "," + form_lastname.Value + ":" + fnm2.Value + "," + lstnmn2.Value + ":" + fnm3.Value + "," + lstnm3.Value + "\n" + "\nE-post: " + "\n" + form_email.Value + "\n" + " \n " +
               "Meddelande:" + "\n"+ form_message.Value + "\n"+ "\n"+ " Kategorin:" +"\n" + __Kateg.Value + "." ;
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
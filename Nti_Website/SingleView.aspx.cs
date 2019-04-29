using Nti_Website.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nti_Website
{
    public partial class SingleView : System.Web.UI.Page
    {

      

        protected void Page_Load(object sender, EventArgs e)
        {
            var r5a = Main.GetDBValue("Files", "Data", new string[] { "ProjName" }, new string[] { Request.QueryString["ProjName"] });
            var _a = Main.GetDBValue("Files", "ContentType", new string[] { "ProjName" }, new string[] { Request.QueryString["ProjName"] });
            var a = "application/pdf";
            bool isPDF = false;
            bool isPDF1 = false;
            for(int x = 0; x < r5a.Length; x++)
            {
                Byte[] FileBuffer = (Byte[])r5a[x];
                string type = _a[x].ToString();
                FileType T = Main.GetFileType(type);
                if(T == FileType.OTHER || T == FileType.VIDEO)
                {
                    isPDF = true;
                    if(T == FileType.OTHER)
                    {
                        isPDF1 = true;
                    }
                }
            }
            if (isPDF1)
            {
                Button1.Visible = true;
            }
            else
            {
                Button1.Visible = false;
                bilaglbl.Visible = true;
                bilaglbl.Text = "Det finns inga bilagor att visa!";
            }

        }

        public static void KS(Page page, string text)
        {
            Main.Send(page, text);
        }


        public static object[] GET(string s1, string s2, string[] s3, string[] s4)
        {

            return Main.GetDBValue(s1, s2, s3, s4);
        }


        public static FileType get_type(string _con)
        {
            return Main.GetFileType(_con);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            WebClient User = new WebClient();
            var r5a = Main.GetDBValue("Files", "Data", new string[] { "ProjName" }, new string[] { Request.QueryString["ProjName"] });
            var typ = Main.GetDBValue("Files", "ContentType", new string[] { "ProjName" }, new string[] { Request.QueryString["ProjName"] });
            for (int x = 0; x < r5a.Length; x++)
            {
                   
                    string type = typ[x].ToString();
                    Byte[] FileBuffer = (Byte[])r5a[x];
                if (FileBuffer != null)
                {
                    if (Main.GetFileType(type) == FileType.OTHER)
                    {
                        Response.ContentType = "application/pdf";
                        Response.AddHeader("content-length", FileBuffer.Length.ToString());
                        Response.BinaryWrite(FileBuffer);
                    }
                }
                    //Response.Write("<img class=\"mySlides\" style=\"width:100%\" src=\"data:image/;base64," + data + "\"/>");

            }
               

           
         
        }
    }
}
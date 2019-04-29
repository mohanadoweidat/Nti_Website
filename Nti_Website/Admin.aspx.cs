using Nti_Website.Database;
using System;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;

namespace Nti_Website
{
    public partial class Admin : System.Web.UI.Page
    {
        bool Nameexist = false;



        protected void Page_Load(object sender, EventArgs e)
        {
            string _projnamn = projname.Value;

            lblMessage.Visible = false;
            lblMessage.Text = "";


            errorlabel.Visible = false;
            errorlabel.Text = ""; ;

            if (Session["Admin"] != null)
            {
                pnl2.Visible = true;
                wlc.Text = "Välkommen Tillbacka: " + Session["Admin"];
            }
            // Response.Redirect("index.aspx");
            btnuploader.ServerClick += _btnuploader_ServerClick;
        }

        private void _btnuploader_ServerClick(object sender, EventArgs e)
        {

            string _projnamn = projname.Value;
            string _projdesc = projdesc.Value;
            string _Creators = skapadav.Value;
            foreach (HttpPostedFile postedFile in file2.PostedFiles)
            {
                //SqlConnection sql2 = new SqlConnection(Connectionstring.con);
                //sql2.Open();
                //SqlCommand cmd2 = new SqlCommand();
                //cmd2.CommandText = "select * from [Files]";
                //cmd2.Connection = sql2;
                //SqlDataReader reader2 = cmd2.ExecuteReader();
                //while (reader2.Read())
                //{
                //     if (reader2[1].ToString() == _projnamn)
                //     {
                //          Nameexist = true;
                //          break;
                //     }
                //}
                //if (Nameexist == true)
                //{


                //    errorlabel.Visible = true;
                //    errorlabel.ForeColor = System.Drawing.Color.Red;
                //    errorlabel.Text = "Det finns redan ett projekt med samma namn!";
                //}
                //else
                //{


            //}
                    string filename = Path.GetFileName(postedFile.FileName);
                    string contentType = postedFile.ContentType;
                    using (Stream fs = postedFile.InputStream)
                    {
                        using (BinaryReader br = new BinaryReader(fs))
                        {
                            byte[] bytes = br.ReadBytes((Int32)fs.Length);

                            using (SqlConnection con = new SqlConnection(Connectionstring.con))
                            {
                                string query = "insert into Files values (@ProjName,@Data, @ContentType)";
                                using (SqlCommand cmd1 = new SqlCommand(query))
                                {
                                    cmd1.Connection = con;
                                    cmd1.Parameters.AddWithValue("@ProjName", _projnamn);
                                    cmd1.Parameters.AddWithValue("@Data", bytes);
                                    cmd1.Parameters.AddWithValue("@ContentType", contentType);
                                    con.Open();
                                    cmd1.ExecuteNonQuery();
                                    con.Close();
                                }
                            }
                        }
                    }
            }


            SqlConnection sql = new SqlConnection(Connectionstring.con);
            sql.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from [Projects]";
            cmd.Connection = sql;
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {

                if (reader[1].ToString() == _projnamn)
                {


                    Nameexist = true;
                    break;
                }

            }
            if (Nameexist == true)
            {

                errorlabel.Visible = true;
                errorlabel.ForeColor = System.Drawing.Color.Red;
                errorlabel.Text = "Det finns redan ett projekt med samma namn!";
                return;
                // Main.Reg(Page, "showError(3)");
            }
            else
            {
                using (SqlConnection con1 = new SqlConnection(Connectionstring.con))
                {
                    // Just get month and year
                    //  string ss = DateTime.Now.ToString("yyyyMM");
                    // DateTime _year = Convert.ToDateTime(year.Value);
                    string _category = categ.Value;
                    string query2 = "insert into Projects values (@ProjName,@Description, @Creators, @Year, @Category)";
                    using (SqlCommand cmd2 = new SqlCommand(query2))
                    {
                        con1.Open();
                        cmd2.Connection = con1;
                        cmd2.Parameters.AddWithValue("@ProjName", _projnamn);
                        cmd2.Parameters.AddWithValue("@Description", _projdesc);
                        cmd2.Parameters.AddWithValue("@Creators", _Creators);
                        cmd2.Parameters.AddWithValue("@Year", year.Value);
                        cmd2.Parameters.AddWithValue("@Category", _category);
                        cmd2.ExecuteNonQuery();
                        con1.Close();
                    }
                }
            }
            // Main.Reg(Page, "SuccesMed(1)");
            lblMessage.Visible = true;
            lblMessage.ForeColor = System.Drawing.Color.Black;
            lblMessage.Text = "Projektet har lagts upp";

        }
    }
}







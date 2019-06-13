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
        public static int SEL = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //string a = Main.GetDBValue("Projects", "Description", new string[] { "ProjName" }, new string[] { "Mohanad" });

            //Main.Send(Page, a);
            if (!IsPostBack)
            {
                List<string> added = new List<string>();
                object[] Cate = Main.GetDBValue("Projects", "Category", null, null);
                ListItem choose = new ListItem();
                choose.Text = "Välj kategori.";
                choose.Value = "none";
                DropDowner.Items.Add(choose);
                for (int x = 0; x < Cate.Length; x++)
                {
                    if (!added.Contains(Cate[x].ToString())) {
                        ListItem item = new ListItem();
                        item.Text = Cate[x].ToString();
                        item.Value = Cate[x].ToString();
                        DropDowner.Items.Add(item);
                        added.Add(Cate[x].ToString());
                    }
                }
            }
        }

        private int GET_INDEX(string value)
        {
            for(int x = 0; x < DropDowner.Items.Count; x++)
            {
                if(DropDowner.Items[x].Text == value)
                {
                    return x;
                }
            }
            return 0;
        }

        public static object[] GET(string s1, string s2, string[] s3, string[] s4)
        {

            return Main.GetDBValue(s1,s2,s3,s4);
        }

        protected void DropDowner_SelectedIndexChanged(object sender, EventArgs e)
        {
            SEL = DropDowner.SelectedIndex;
            string value = DropDowner.SelectedItem.Value;
            //string current = Request.QueryString["Filter"];
            //if(current != value)
            {
                string R = Request.RawUrl.Split('?')[0];
                Response.Redirect(R + "?Filter=" + value);
            }
        }

    }
}
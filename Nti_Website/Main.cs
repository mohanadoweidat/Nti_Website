using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace Nti_Website.Database
{
    public class Main
    {
        public static void Send(Page page, string text)
        {
            ScriptManager.RegisterStartupScript(page, page.GetType(), 
                "text", "alert('"+text+ "')", true);
        }



        public static void Reg(Page page, string func)
        {
            Reg(page, "text", func);
        }

        public static void Reg(Page page, string key, string func)
        {
            ScriptManager.RegisterStartupScript(page, page.GetType(), key, func, true);
        }


        public static object[] GetDBValue(string tableName, string search, string[] conditions, string[] values)
        {
            object[] val = new object[64];
            using (SqlConnection connection = new SqlConnection(Connectionstring.con))
            {
                connection.Open();
                string query = "SELECT "+search+" FROM "+tableName;
                if(conditions != null)
                {
                    query += " WHERE ";
                    for (int x = 0; x < conditions.Length; x++)
                    {
                        query += "(";
                        if (x > 0)
                        {
                            query += " AND ";
                        }
                        query += conditions[x] + "='" + values[x] + "'";
                        query += ")";
                    }
                }
                SqlDataAdapter da = new SqlDataAdapter(query, connection);
                DataSet ds = new DataSet();
                da.Fill(ds);
                for(int x = 0; x < ds.Tables[0].Rows.Count; x++)
                {
                    val[x] = ds.Tables[0].Rows[x][search];
                }
                connection.Close();
                //val = ds.Tables.Count+"";
            }
            //int valid = 0;
            //for(int x = 0; x < val.Length; x++)
            //{
            //    if(val[x] != null)
            //    {
            //        valid++;
            //    }
            //}
            //string[] NEW = new string[valid];

            return val;
        }

    }
}
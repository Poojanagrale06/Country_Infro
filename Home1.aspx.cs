using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CountryInfro
{
    public partial class Home1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> GetCountries(string prefixText)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Constring"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Country_Infromation where Country_Name like @Name+'%'", conn);
            cmd.Parameters.AddWithValue("@Name", prefixText);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            List<string> Country_Name = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Country_Name.Add(dt.Rows[i][1].ToString());
            }
            return Country_Name;
        }

        

        protected void Searchbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home2.aspx");
        }
    }




}

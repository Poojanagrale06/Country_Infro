using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CountryInfro
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Regibtn_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["Constring"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Register_Procedure", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Username", RUsertxt.Text);
                cmd.Parameters.AddWithValue("@Pass", RPasswordtxt.Text);
                cmd.Parameters.AddWithValue("@Conform_Pass", CPasswordtxt.Text);

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Registered Successfully')</script>");
                Response.Redirect("Home1.aspx");
                clearcontrol();

            }
        }

        public void clearcontrol()
        {
            RUsertxt.Text = string.Empty;
            RPasswordtxt.Text = string.Empty;
            CPasswordtxt.Text = string.Empty;
            
        }

    }
}
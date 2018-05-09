using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CountryInfro.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Aloginbtn_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["Constring"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);
            {
                Session["Admin"] = Admintxt.Text.ToString();

                conn.Open();
                SqlCommand cmd = new SqlCommand("select Count(*) from Admin where Admin= @Admin and Password= @Password ", conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Admin", Admintxt.Text.ToString());
                cmd.Parameters.AddWithValue("@Password", Passtxt.Text.ToString());

                int output = Convert.ToInt32(cmd.ExecuteScalar());
                if (output == 1)
                    Response.Redirect("Detail.aspx");
                else
                    Response.Write("<script>alert('Login failed')</script>");

                //Response.Write("login failed");
                conn.Close();

            }
        }
    }
}
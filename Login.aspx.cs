using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CountryInfro
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["Username"] != null && Request.Cookies["Password"] != null)
                {
                    Usertxt.Text = Request.Cookies["Username"].Value;
                    Passwordtxt.Attributes["value"] = Request.Cookies["Password"].Value;
                }
            }
        }

        protected void Loginbtn_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["Constring"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);
            {
                Session["Username"] = Usertxt.Text.ToString();

                conn.Open();
                SqlCommand cmd = new SqlCommand("select Count(*) from Register_Table where Username= @Username and Pass= @Pass ", conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Username", Usertxt.Text.ToString());
                cmd.Parameters.AddWithValue("@Pass", Passwordtxt.Text.ToString());

                int output = Convert.ToInt32(cmd.ExecuteScalar());
                if (output == 1)

                    Response.Redirect("Home1.aspx");
                else
                    Response.Write("<script>alert('Login failed')</script>");
                clearcontrol();
                //Response.Write("login failed");
                conn.Close();

                //for Remember Me
                if (chkRememberMe.Checked)
                {
                    Response.Cookies["Username"].Expires = DateTime.Now.AddDays(30);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
                }
                else
                {
                    Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

                }
                Response.Cookies["Username"].Value = Usertxt.Text.Trim();
                Response.Cookies["Password"].Value = Passwordtxt.Text.Trim();
            }

            //for Cookies
            HttpCookie cookies = new HttpCookie("Userlogin");
            cookies["Name"] = Usertxt.Text;
           


            Response.Cookies.Add(cookies);

        }

        //for Clear Control
        public void clearcontrol()
        {
            Usertxt.Text = string.Empty;
            Passwordtxt.Text = string.Empty;
            
        }


        //for Sending Email to Mail
        protected void Button1_Click(object sender, EventArgs e)
        {

            string username = "";
            string password = "";
            string CS = ConfigurationManager.ConnectionStrings["Constring"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand("select Username, Pass from Register_Table where Username=@Username", conn);
            cmd.Parameters.AddWithValue("Username", TextBox1.Text);
            conn.Open();
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {

                if (sdr.Read())
                {
                    username = sdr["Username"].ToString();
                    password = sdr["Pass"].ToString();

                }

            }
            conn.Close();

            if (!string.IsNullOrEmpty(password))
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("Poojanagrale06@gmail.com");
                msg.To.Add(TextBox1.Text);
                msg.Subject = " Recover your Password";
                msg.Body = ("Your Username is:" + username + "<br/><br/>" + "Your Password is:" + password);
                msg.IsBodyHtml = true;

                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = ""; //Your Email ID  
                ntwd.Password = ""; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                lbmsg.Text = "Username and Password Sent Successfully";
                lbmsg.ForeColor = System.Drawing.Color.White;
            }

        }



        


    }
}

    
       
    









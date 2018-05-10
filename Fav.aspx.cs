using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CountryInfro
{
    public partial class Fav : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserLogin"];
            HttpCookie cookies = Request.Cookies["Fav"];
            if (cookies != null)
            {
                Response.Write("Hello"); UserName.Text = cookie["Name"];
                Labfav.Text = cookies["name"];

            }
        }
    }
}
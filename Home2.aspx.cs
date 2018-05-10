using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CountryInfro
{
    public partial class Home2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //for cookies

            HttpCookie cookies = new HttpCookie("Fava");
            cookies["Name"] = ("name");


            Response.Cookies.Add(cookies);
            Response.Redirect("Fav.aspx");
            

        }
    }
}
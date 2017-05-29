using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualSchool
{
    public partial class Evaluate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Submit.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MarksCentral.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}
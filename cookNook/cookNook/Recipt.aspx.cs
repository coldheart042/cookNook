using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cookNook
{
    public partial class Recipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Customer c = HttpContext.Current.Session["customer"];
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void btnCorrect_Click(object sender, EventArgs e)
        {

        }
    }
}
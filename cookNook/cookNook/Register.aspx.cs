using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cookNook
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
             Customer c = new Customer();
             c.strFirst = txtFirst.Text;
             c.strLast = txtLast.Text;
             c.strAddress = txtAddress.Text;
             c.strCity = txtCity.Text;
             c.strState = txtState.Text;
             c.strZip = txtZip.Text;
             c.strEmail = txtEmail.Text;
             c.strPassword = txtPassword.Text;
             c.strPhone = txtPhone.Text;
             Session["customer"] = c;
        }

    }
}
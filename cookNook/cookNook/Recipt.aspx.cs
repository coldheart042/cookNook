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
            if (Session["bookmarkBlock"] == null) 
            { 
                Response.Redirect("Default.aspx"); 
            }
            Customer c = (Customer) Session["customer"];
            txtFirst.Text = c.strFirst;
            txtLast.Text = c.strLast;
            txtAddress.Text = c.strAddress;
            txtCity.Text = c.strCity;
            txtState.Text = c.strState;
            txtZip.Text = c.strZip;
            txtEmail.Text = c.strEmail;
            txtPassword.Text = c.strPassword;
            txtPhone.Text = c.strPhone;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void btnCorrect_Click(object sender, EventArgs e)
        {
            Session["notCorrect"] = 1;
            Response.Redirect("Register.aspx");
        }
    }
}
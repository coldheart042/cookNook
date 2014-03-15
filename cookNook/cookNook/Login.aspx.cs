using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cookNook
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["customer"] != null)
            {
                CustomerObj customer = (CustomerObj)Session["customer"];
                txtNameFirst.Text = customer.strNameFirst;
                txtNameLast.Text = customer.strNameLast;
                txtAddress.Text = customer.strAddress;
                txtCity.Text = customer.strCity;
                txtState.Text = customer.strState;
                txtZip.Text = customer.strZip;
                txtEmail.Text = customer.strEmail;
                txtPassword.Text = customer.strPassword;
                txtPhone.Text = customer.strPhone;
                Session["customer"] = null;

            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            Session["block"] = 1;
            CustomerObj customer = new CustomerObj();
            customer.setFields(txtNameFirst.Text, txtNameLast.Text, txtAddress.Text, txtCity.Text, txtState.Text, txtZip.Text, txtPassword.Text, txtEmail.Text, txtPhone.Text, DateTime.Now.ToShortDateString());
            Session["customer"] = customer;
            Response.Redirect("~/Recipt.aspx");
        }
    }
}
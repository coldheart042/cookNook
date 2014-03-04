using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cookNook
{
    public partial class Products : System.Web.UI.Page
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
            customer.setFields(txtNameFirst.Text, txtNameLast.Text, txtAddress.Text, txtCity.Text, txtState.Text, txtZip.Text, txtPassword.Text, txtEmail.Text, txtPhone.Text, DateTime.Now.ToShortDateString() );
            Session["customer"] = customer;
            Response.Redirect("~/Recipt.aspx");
        }

        ArrayList aQty = new ArrayList(), aPartNo = new ArrayList(), aDesc = new ArrayList(), aPrice = new ArrayList();
        double total;

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e) // When User clicks the "Buy" button
        {
            int i = GridView1.SelectedIndex, amount = int.Parse(((TextBox)GridView1.Rows[i].FindControl("txtQuantity")).Text);    // Get the selected row as an object, and the value of the tbox           
            GridViewRow currentRow = GridView1.Rows[i];
            string partNo = currentRow.Cells[1].Text;
            string desc = currentRow.Cells[2].Text;
            double price = double.Parse(currentRow.Cells[3].Text.Substring(1));
            aQty.Add(amount);
            aPartNo.Add(partNo);
            aDesc.Add(desc);
            aPrice.Add(price);
            string shoppingCart = "";
            

        }
    }
}
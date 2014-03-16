using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cookNook
{
    public partial class Recipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["block"] == null)
            {
                Response.Redirect("~/");
            }
            else
            {
                if (Session["customer"] != null) 
                {
                    CustomerObj customer = (CustomerObj) Session["customer"];
                    txtNameFirst.Text = customer.strNameFirst;
                    txtNameLast.Text = customer.strNameLast;
                    txtAddress.Text = customer.strAddress;
                    txtCity.Text = customer.strCity;
                    txtState.Text = customer.strState;
                    txtZip.Text = customer.strZip;
                    txtEmail.Text = customer.strEmail;
                    hdnPassword.Value = customer.strPassword;
                    txtPhone.Text = customer.strPhone;
                }
            }
        }

        public void fillFields(CustomerObj customer)
        {

        }
            
        protected void btnSubmit_Click(object sender, EventArgs e)
        {   
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConn"].ToString()))
            {
                try
                {
                    String date = DateTime.Now.ToShortDateString();
                    SqlCommand check = new SqlCommand("Select Email from tblCustomerCN where Email = '" + txtEmail.Text + "'", cn);
                    SqlCommand cmd = new SqlCommand("Insert into tblCustomerCN(CustomerIDpk,NameFirst,NameLast,Address,City,State,Zip,Email,Password,Phone,CustomerDate) values(NEWID(), '" + txtNameFirst.Text + "', '" + txtNameLast.Text + "', '" + txtAddress.Text + "', '" + txtCity.Text + "', '" + txtState.Text + "', '" + txtZip.Text + "', '" + txtEmail.Text + "', '" + hdnPassword.Value + "', '" + txtPhone.Text + "', '" + date + "')", cn);
                    SqlDataReader reader;
                    cn.Open();
                    reader = check.ExecuteReader();
                    // Check if email exists - if not, proceed.
                    if (!reader.Read())
                    {
                        reader.Close();
                        cmd.BeginExecuteNonQuery();
                        cn.Close();
                        btnSubmit.Text = "Success!";
                        FormsAuthentication.SetAuthCookie(txtEmail.Text, true);
                        Session["Check"] = true;
                        Response.Redirect("~/Default.aspx");
                    }
                    else
                    {
                        reader.Close();
                        cn.Close();
                        btnSubmit.Text = "Email already used!";
                    }
                    
                }
                catch (Exception ex)
                {
                    if (ex is SqlException)
                    {
                        lblError.Text = "There was a database error: " + ex.Message;
                    }
                    else
                    {
                        lblError.Text = "There was an error: " + ex.Message;
                    }
                }
            }
        }

        protected void btnCorrect_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Login.aspx");
        }
    }
}
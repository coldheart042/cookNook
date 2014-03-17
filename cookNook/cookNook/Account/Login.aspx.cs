using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
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
            Response.Redirect("~/Account/Recipt.aspx");
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            Boolean blnResult = false;

            // Set the boolean to the authentication status
            blnResult = Authentication(Login1.UserName, Login1.Password);
             if (blnResult == true)
                 {
                      // This is the actual statement which will authenticate the user
                      e.Authenticated = true;
                      Session["login"] = Login1.UserName;
                      // Store your authentication mode in session variable 
                     Session["Check"] = true;
                }
               else
             {
                    // If user failed to provide valid user name and password
                    e.Authenticated = false;
           }
        }

        protected static Boolean Authentication(string username, string password) 
        {
            string sqlString = "Select Email, Password from tblCustomerCN where Email='" + username + "' and Password ='" + password + "'";

            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConn"].ToString());
            SqlCommand comm = new SqlCommand(sqlString, cn);
            SqlDataReader reader;
            try
            {
                cn.Open();

                reader = comm.ExecuteReader();
                if (reader.Read())
                {
                    reader.Close();
                    cn.Close();
                    return true;
                }
                else
                {
                    reader.Close();
                    cn.Close();
                    return false;
                }
                
            }
            catch (Exception)
            {
                Console.Write("SQL Connection Failed.");
                return false;
            }

        }
    }
}
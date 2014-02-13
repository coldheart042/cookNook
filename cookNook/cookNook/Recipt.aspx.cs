using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
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
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM tblCustomerCN", cn);
                cn.Open();
                SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                rdr.Read();
                Response.Write(rdr[0].ToString()); //read a value
            }
        }

        protected void btnCorrect_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Products.aspx");
        }
    }
}
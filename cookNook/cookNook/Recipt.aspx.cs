using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cookNook
{
    public partial class Recipt1 : System.Web.UI.Page
    {
        string customer;
        ArrayList cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null && Session["cart"] == null)
            {
                Response.Redirect("~/Account/Login.aspx");
            }
            else
            {
                cart = (ArrayList)Session["cart"];
                customer = (string)Session["login"];
                buildCustomerTable(customer);
            }
        }

        private void buildCustomerTable(string customer)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConn"].ToString());
            string sqlString = "select * from tblCustomerCN where Email='" + customer + "'";
            SqlCommand cmd = new SqlCommand(sqlString, cn);
            SqlDataReader reader = null;
            try
            {
                cn.Open();
                reader = cmd.ExecuteReader();
                reader.Read();
                // Read the data into the cells
                celNameFirst.Text = (string)reader[1];
                celNameLast.Text = (string)reader["NameLast"];
                celAddress.Text = (string)reader["Address"];
                celCity.Text = (string)reader["City"];
                celState.Text = (string)reader["State"];
                celZip.Text = (string)reader["Zip"];
                if ((string)reader["Phone"] != null)
                {
                    celPhone.Text = (string)reader["Phone"];
                }
                else
                {
                    celPhone.Text = " ";
                }
                // Close the reader and connection
                reader.Close();
                cn.Close();
            }
            catch (SqlException ex)
            {
                lblError.Text = ex.Message;
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }
    }
}
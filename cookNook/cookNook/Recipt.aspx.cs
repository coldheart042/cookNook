using System;
using System.Collections;
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
                // Unpack cart and store in arrayList to be used as datasource for Gridview
                //buildItems(cart); // Use if I can't make the objects work in datasource
                GridView1.DataSource = cart;
                GridView1.DataBind();
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
                celNameFirst.Text = (string)reader[1] + " " + (string)reader["NameLast"];
                celAddress.Text = (string)reader["Address"];
                celCity.Text = (string)reader["City"] + ", " + (string)reader["State"];
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int indx = GridView1.SelectedIndex;
            if (cart.Count > 1)
            {
                cart.RemoveAt(indx);
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                Session["cart"] = null;
                Response.Redirect("~/Products.aspx");
            }
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Session["cart"] = null;
            Response.Redirect("~/Products.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Products.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConn"].ToString());
            string sqlString = "";
            foreach (ProductClass item in cart)
            {
                sqlString += "update tblProducts set OnHand = (select OnHand from tblProducts where PartNumber = "+ item.partNo +") - " + item.qty.ToString() + " where PartNumber = " + item.PartNo + ';';
            }
            SqlCommand cmd = new SqlCommand(sqlString, cn);
            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
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
            Session["cart"] = null;
            Response.Redirect("~/Products.aspx");
        }
    }
}
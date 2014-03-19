using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cookNook
{
    public partial class Products : System.Web.UI.Page
    {
        ArrayList cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Check"] == null)
            {
                Response.Redirect("~/Account/Login.aspx");
            }
           // Set up or fetch cart
            Boolean cartExists = (Session["cart"] != null);
            if (!cartExists)
            {
                cart = new ArrayList();
            }
            else
            {
                cart = (ArrayList)Session["cart"];
            }
        }
       

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e) // When User clicks the "Buy" button
        {
            
            lblErrorMsg.Text = "";
            // Set fields in item object to process.
            int index = GridView1.SelectedIndex;
            GridViewRow currentRow = GridView1.Rows[index];
            int qty = 0;
            // Get the selected row as an object, and the value of the tbox
            try
            {
                qty = int.Parse(((TextBox)GridView1.Rows[index].FindControl("txtQuantity")).Text);
            }
            catch (Exception ex)
            {
                lblErrorMsg.Text = "Incorrect input! " + ex.Message;
            }
            int onHand = int.Parse(currentRow.Cells[4].Text);
            if (onHand > 0)
            {
                if (onHand - qty >= 0)
                {
                    if (qty > 0)
                    {
                        string partNo = currentRow.Cells[1].Text;
                        string description = currentRow.Cells[2].Text;
                        double price = double.Parse(currentRow.Cells[3].Text.Substring(1));
                        ProductClass item = new ProductClass();
                        item.setFields(partNo, description, qty, price);

                        // Process Item if cart's count > 0, else add to cart.
                        if (cart.Count > 0)
                        {
                            processItem(item, onHand);
                        }
                        else
                        {
                            cart.Add(item);
                            
                        }
                        addRows();
                        // Save cart as session variable
                        Session["cart"] = cart;
                        lblEmpty.Visible = false;
                        btnCheckOut.Visible = true;
                    }
                    else
                    {
                        lblErrorMsg.Text = "Must specify a valid amount!";
                        addRows();                                              //
                    }
                }
                else
                {
                    lblErrorMsg.Text = "The quantity requested is more than the amount in stock, please adjust amount accordingly.";
                }
            }
            else
            {
                lblErrorMsg.Text = "The selected item is out of stock, please try another item.";
            }
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Recipt.aspx");
        }

        protected void processItem(ProductClass item, int onHand)
        {
            // Determine if item is in cart
            bool isPresent = false;
            int index = 0;
            foreach (ProductClass cartitem in cart)
            {
                if(cartitem.partNo == item.partNo)
                {
                    isPresent = true;
                    index = cart.IndexOf(cartitem);
                }
                else
                {

                }
            }
            // Add to qty if item is present in cart
            if (isPresent)
            {
                ProductClass temp = (ProductClass)cart[index];
                if (onHand >= (temp.qty + item.qty))
                {
                    cart.RemoveAt(index);
                    temp.qty += item.qty;
                    cart.Add(temp);
                }
                else
                {
                    lblErrorMsg.Text = "Amount requested must be less than amount in stock!";
                }
            }
            else
            {
                cart.Add(item);
            }
        }

        private void addRows()
        {
            foreach (ProductClass item in cart)
            {
                // Create new Tablerow and cells
                TableRow tr = new TableRow();
                TableCell c1 = new TableCell(), c2 = new TableCell(), c3 = new TableCell(), c4 = new TableCell();
                c1.Text = item.qty.ToString();
                c2.Text = item.partNo;
                c3.Text = item.description;
                c4.Text = item.price.ToString("C");

                // Add cells to the row
                tr.Controls.Add(c1);
                tr.Controls.Add(c2);
                tr.Controls.Add(c3);
                tr.Controls.Add(c4);

                // Add row to table
                tblCart.Rows.Add(tr);
            }
        }
    }
}
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

        ArrayList aQty = new ArrayList(), aPartNo = new ArrayList(), aDesc = new ArrayList(), aPrice = new ArrayList();
        double total;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["Check"] == null)
            {
                Response.Redirect("~/Account/Login.aspx");
            }
            if (Session["cart"] != null)
            {
                List<ArrayList> cart = (List<ArrayList>)Session["cart"];
                aQty = cart[0];
                aPartNo = cart[1];
                aDesc = cart[2];
                aPrice = cart[3];
            }
            
        }

      

       

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e) // When User clicks the "Buy" button
        {
            int index = GridView1.SelectedIndex, amount = int.Parse(((TextBox)GridView1.Rows[index].FindControl("txtQuantity")).Text);    // Get the selected row as an object, and the value of the tbox           
            GridViewRow currentRow = GridView1.Rows[index];
            string partNo = currentRow.Cells[1].Text;
            string desc = currentRow.Cells[2].Text;
            double price = double.Parse(currentRow.Cells[3].Text.Substring(1));
            aQty.Add(amount);
            aPartNo.Add(partNo);
            aDesc.Add(desc);
            aPrice.Add(price);

            List<ArrayList> temp = new List<ArrayList>();
            temp.Add(aQty);
            temp.Add(aPartNo);
            temp.Add(aDesc);
            temp.Add(aPrice);
            Session["cart"] = temp;

            for (int i = 0; i < aQty.Count; i++)
            {
                TableRow tr = new TableRow();
                TableCell c1 = new TableCell(), c2 = new TableCell(), c3 = new TableCell(), c4 = new TableCell();
                c1.Text = aQty[i].ToString();
                c2.Text = (string)aPartNo[i];
                c3.Text = (string)aDesc[i];
                c4.Text = aPrice[i].ToString();
                tr.Cells.Add(c1);
                tr.Cells.Add(c2);
                tr.Cells.Add(c3);
                tr.Cells.Add(c4);
                tblCart.Rows.Add(tr);
            }
        }
    }
}
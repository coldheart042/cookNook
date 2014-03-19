using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace cookNook
{
    public class ProductClass
    {
        public string partNo;
        public string description;
        public int qty;
        public double price;

        public void setFields(string partNo, string description, int qty, double price)
        {
            this.partNo = partNo;
            this.price = price;
            this.qty = qty;
            this.description = description;
        }
        public string PartNo
        {
            get{return partNo;}
        }
        public double Price
        {
            get { return price; }
        }
        public int Qty
        {
            get { return qty; }
        }
        public string Desc
        {
            get { return description; }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace cookNook
{
    public class CustomerObj
    {
        public String strNameFirst { get; set; }
        public String strNameLast { get; set; }
        public String strAddress { get; set; }
        public String strCity { get; set; }
        public String strState { get; set; }
        public String strZip { get; set; }
        public String strPassword { get; set; }
        public String strEmail { get; set; }
        public String strPhone { get; set; }
        public String strCustomerDate { get; set; }

        public void setFields(String first,String last, String address, String city, String state, String zip, String password, String email, String phone, String customerDate)
        {
            this.strNameFirst = first;
            this.strNameLast = last;
            this.strAddress = address;
            this.strCity = city;
            this.strState = state;
            this.strZip = zip;
            this.strPassword = password;
            this.strEmail = email;
            this.strPhone = phone;
            this.strCustomerDate = customerDate;
        }
    }
}
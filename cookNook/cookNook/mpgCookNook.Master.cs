﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cookNook
{
    public partial class mpgCookNook : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLoginSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MagazinOnline
{
    public partial class AdminMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminiesire_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Logare.aspx");
            Session["Utilizator"] = null;           
        }
    }
}
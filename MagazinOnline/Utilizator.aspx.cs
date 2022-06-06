using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MagazinOnline
{
    public partial class Utilizator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NumeUtilizator"] != null)
            {
                lblSucces.Text = "Conectare cu succes, Bun venit <b>" + Session["NumeUtilizator"].ToString();
            }
            else
            {
                Response.Redirect("~/Logare.aspx");
            }
        }

        protected void btniesire_Click(object sender, EventArgs e)
        {
            Session["Utilizator"] = null;
            Response.Redirect("~/Logare.aspx");
        }
    }
}
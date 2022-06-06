using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace MagazinOnline
{
    public partial class Logare : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Request.Cookies["NUME"] != null && Request.Cookies["PAROL"] != null )
                {
                    txtNumeUtilizator.Text= Request.Cookies["NUME"].Value;
                    txtParola.Text = Request.Cookies["PAROL"].Value;
                    CheckBox1 .Checked = true;

                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUtilizator where NumeUtilizator=@numeutilizator and Parola=parola", con);
                cmd.Parameters.AddWithValue("@numeutilizator", txtNumeUtilizator.Text );
                cmd.Parameters.AddWithValue("@parola", txtParola.Text);
                
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                   // Session["NUME"]=dt.Rows[0]["Uid"].ToString();
                   // Session["numeutilizator"] = dt.Rows[0]["Email"].ToString();
                   // Response.Cookies["NUME"].Expires = DateTime.Now.AddDays(-1);
                   // Response.Cookies["PAROL"].Expires = DateTime.Now.AddDays(-1);


                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["NUME"].Value = txtNumeUtilizator.Text;
                        Response.Cookies["PAROL"].Value = txtParola.Text;

                        Response.Cookies["NUME"].Expires = DateTime.Now.AddDays(10);

                        Response.Cookies["PAROL"].Expires = DateTime.Now.AddDays(10);
                    }
                    else
                    {
                        Response.Cookies["NUME"].Expires = DateTime.Now.AddDays(-1);

                        Response.Cookies["PAROL"].Expires = DateTime.Now.AddDays(-1);
                    }
                    string UtilTip;
                    UtilTip = dt.Rows[0][5].ToString().Trim();

                    if(UtilTip =="Utilizator")
                    {
                        Session["NumeUtilizator"] = txtNumeUtilizator.Text;
                        Response.Redirect("~/Utilizator.aspx");
                    }
                    if (UtilTip == "Admin")
                    {
                        Session["NumeUtilizator"] = txtNumeUtilizator.Text;
                        Response.Redirect("~/AdminHome.aspx");
                    }
                }
                else
                {
                    lbleror.Text = "Numele de utilizator sau parola sunt greșite";
                }

                //Response.Write("<script> alert('Conectare cu succes'); </script>");
                clr();
                con.Close();
                //lblMsg.Text = "Înregistrare cu succes";
                //lblMsg.ForeColor = System.Drawing.Color.Green;

            }
        }

        private void clr()
        {
            txtParola.Text = string.Empty;
            txtNumeUtilizator.Text = string.Empty;
            txtNumeUtilizator.Focus();
        }
    }
}
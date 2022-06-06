using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MagazinOnline
{
    public partial class Conectare : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtInregistrare_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblUtilizator(NumeUtilizator,Parola,Email,Nume,TipUtilizator) Values('" + txtNumeUtilizator.Text + "','" + txtParola.Text + "','" + txtEmail.Text + "','" + txtNume.Text + "','Utilizator')", con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('Înregistrare cu succes'); </script>");
                    clr();
                    con.Close();
                    lblMsg.Text = "Înregistrare cu succes";
                    lblMsg.ForeColor = System.Drawing.Color.Green;
                    
                }
                Response.Redirect("~/Logare.aspx"); 
            }
            else
            {
                Response.Write("<script> alert('Înregistrare eșuată'); </script>");
                lblMsg.Text = "Înregistrare cu succes";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }

        private bool isformvalid()
        {
            if (txtNumeUtilizator.Text == "")
            {
                Response.Write("<script> alert('Numele de utilizator nu este valid'); </script>");
                txtNumeUtilizator.Focus();
                return false;
            }
            else if (txtParola.Text == "")
            {
                Response.Write("<script> alert('Parola nu este validă'); </script>");
                txtParola.Focus();
                return false;
            }

            else if (txtParola.Text != txtConfirmareParola.Text)
            {
                Response.Write("<script> alert('Confirmare parola nu este validă'); </script>");
                txtConfirmareParola.Focus();
                return false;
            }

            else if (txtEmail.Text == "")
            {
                Response.Write("<script> alert('Email-ul nu este valid'); </script>");
                txtEmail.Focus();
                return false;
            }

            else if (txtNume.Text == "")
            {
                Response.Write("<script> alert('Numele nu este valid'); </script>");
                txtNume.Focus();
                return false;
            }

            return true;
        }

        private void clr()
        {
            txtNumeUtilizator.Text = string.Empty;
            txtParola.Text = string.Empty;
            txtNume.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtConfirmareParola.Text = string.Empty;
        }
    }

}
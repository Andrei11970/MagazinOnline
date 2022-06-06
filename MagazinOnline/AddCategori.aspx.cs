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
    public partial class ADdCategori : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BingCategoriReapter();
        }

        private void BingCategoriReapter()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblCategorie", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrCategori.DataSource = dt;
                        rptrCategori.DataBind();
                    }
                }
            }
        }

        protected void btnAdaugaCategorie_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblCategorie(CatName) Values('" + txtCategorie.Text + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Categorie adaugat cu succes '); </script>");
                txtCategorie.Text = string.Empty;

                con.Close();
                //lblMsg.Text = "Înregistrare cu succes";
                //lblMsg.ForeColor = System.Drawing.Color.Green;
                txtCategorie.Focus();
            }
        }
    }
}
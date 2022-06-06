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
    public partial class AddBrand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindBrandRepeater();
            }
        }

        private void BindBrandRepeater()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblBrands", con))
                {
                    using(SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrBrand.DataSource = dt;
                        rptrBrand.DataBind();
                    }
                }
            }
        }

        protected void btnAdaugaBrand_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblBrands(Name) Values('" + txtBrand.Text + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Brand adaugat cu succes '); </script>");
                txtBrand.Text = string.Empty;

                con.Close();
                //lblMsg.Text = "Înregistrare cu succes";
                //lblMsg.ForeColor = System.Drawing.Color.Green;
                txtBrand.Focus();
            }
        }
    }
}
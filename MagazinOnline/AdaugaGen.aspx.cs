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
    public partial class AdaugaGen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGenRepeater();
        }

        private void BindGenRepeater()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblGen", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrGen.DataSource = dt;
                        rptrGen.DataBind();
                    }
                }
            }
        }

        protected void btnAdaugaBrand_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblGen(GenName) Values('" + txtGen.Text + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Gen adaugat cu succes '); </script>");
                txtGen.Text = string.Empty;

                con.Close();
                txtGen.Focus();
            }
            BindGenRepeater();
        }
    }
}
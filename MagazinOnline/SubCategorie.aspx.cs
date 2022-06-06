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
    public partial class SubCategorie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindMainCat();
                BindSubCatRptr();
            }
        }

        private void BindSubCatRptr()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT A.*,B.* FROM tblSubCategorie A inner join tblCategorie B on B.CatID =A.MainCatID", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrSubCat.DataSource = dt;
                        rptrSubCat.DataBind();
                    }
                }
            }
        }

        protected void btnAdaugaSubCategorie_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblSubCategorie(SubCatName,MainCatID) Values('" + txtSubCategorie.Text + "','"+ddlMainCatID.SelectedItem . Value  +"')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('SubCategorie adaugat cu succes '); </script>");
                txtSubCategorie.Text = string.Empty;

                con.Close();
                ddlMainCatID.ClearSelection();
                ddlMainCatID.Items.FindByValue("0").Selected = true;

            }
            BindSubCatRptr();

        }
        private void BindMainCat()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblCategorie", con);
                SqlDataAdapter sda =new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count != 0)
                {
                    ddlMainCatID.DataSource = dt;
                    ddlMainCatID.DataTextField = "CatName";
                    ddlMainCatID.DataValueField = "CatID";
                    ddlMainCatID.DataBind();
                    ddlMainCatID.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }
   
    }   
}
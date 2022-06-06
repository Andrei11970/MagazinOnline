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
    public partial class AdaugaMarime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBrand();
                BindMainCategory();
                BindGen();
                BindrptrMarime();
            }
        }

        private void BindrptrMarime()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select A.*,B.*,C.*,D.*,E.* from tblMarime A inner join tblCategorie B on B.CatID =a.CategorieID inner join tblBrands C on C.BrandID =A.BrandID inner join tblSubCategorie D on D.SubCatID =A.SubCategorieID inner join tblGen E on E.GenID =A.GenID", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrMarime.DataSource = dt;
                        rptrMarime.DataBind();
                    }
                }
            }
        }

        private void BindMainCategory()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblCategorie", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlCategorie.DataSource = dt;
                    ddlCategorie.DataTextField = "CatName";
                    ddlCategorie.DataValueField = "CatID";
                    ddlCategorie.DataBind();
                    ddlCategorie.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }

        private void BindBrand()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblBrands", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlBrand.DataSource = dt;
                    ddlBrand.DataTextField = "Name";
                    ddlBrand.DataValueField = "BrandID";
                    ddlBrand.DataBind();
                    ddlBrand.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }

        private void BindGen()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblGen whit(nolock)", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlGen.DataSource = dt;
                    ddlGen.DataTextField = "GenName";
                    ddlGen.DataValueField = "GenID";
                    ddlGen.DataBind();
                    ddlGen.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }

        protected void btnAdaugaMarime_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblMarime(MarimeName,BrandID,CategorieID,SubCategorieID,GenID) Values('" + txtMarime.Text + "','" + ddlBrand.SelectedItem.Value + "','" + ddlCategorie.SelectedItem.Value + "','" + ddlSubCategorie.SelectedItem.Value + "','" + ddlGen.SelectedItem.Value + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Marime adaugat cu succes '); </script>");
                txtMarime.Text = string.Empty;

                con.Close();
                ddlBrand.ClearSelection();
                ddlBrand.Items.FindByValue("0").Selected = true;

                ddlCategorie.ClearSelection();
                ddlCategorie.Items.FindByValue("0").Selected = true;

                ddlSubCategorie.ClearSelection();
                ddlSubCategorie.Items.FindByValue("0").Selected = true;

                ddlGen.ClearSelection();
                ddlGen.Items.FindByValue("0").Selected = true;


            }
            BindrptrMarime();
        }

        protected void ddlCategorie_SelectedIndexChanged(object sender, EventArgs e)
        {
            int MainCategoryID = Convert .ToInt32(ddlCategorie.SelectedItem.Value);

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblSubCategorie where MainCatID='"+ ddlCategorie .SelectedItem .Value +"'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlSubCategorie.DataSource = dt;
                    ddlSubCategorie.DataTextField = "SubCatName";
                    ddlSubCategorie.DataValueField = "SubCatID";
                    ddlSubCategorie.DataBind();
                    ddlSubCategorie.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }
    }
}
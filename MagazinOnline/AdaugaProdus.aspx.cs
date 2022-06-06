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
    public partial class AdaugaProdus : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindBrand();
                BindCategory();
                BindGen();
                ddlSubCategorie.Enabled = false;
            }
        }

        private void BindGen()
        {
            using (SqlConnection con = new SqlConnection(CS))
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

        private void BindCategory()
        {
            using (SqlConnection con = new SqlConnection(CS))
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
            using (SqlConnection con = new SqlConnection(CS))
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

        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }

        protected void ddlCategorie_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlSubCategorie.Enabled = true;
            int MainCategoryID = Convert.ToInt32(ddlCategorie.SelectedItem.Value);

            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblSubCategorie where MainCatID='" + ddlCategorie.SelectedItem.Value + "'", con);
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
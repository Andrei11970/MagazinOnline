using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace MagazinOnline
{
    public partial class UitatParola : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MagazinulMeu"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUtilizator where Email=@Email", con);
                cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);
               
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows [0][0]);
                    SqlCommand cmd1 = new SqlCommand("Insert into UitatParola(Id,Uid,RequestDataTime) values('" + myGUID + "','" + Uid + "',GETDATE())", con);
                    cmd1.ExecuteNonQuery();

                    String ToEmailAddress = dt.Rows[0][3].ToString();
                    String NumeUtilizator = dt.Rows[0][1].ToString();
                    String EmailBody = "Buna ," +NumeUtilizator + ",<br/><br/> Apasa pe link-ul de mai jos pentru a reseta parola<br/> https://localhost:44307/RecuperareParola.aspx?id=" + myGUID ;

                    MailMessage PassRecMail = new MailMessage("andreipavel11970@gmail.com", ToEmailAddress );
                   
                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Resetare parola";

                    SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                    SMTP.Credentials = new NetworkCredential()
                    {
                        UserName = "andreipavel11970@gmail.com",
                        Password = "xlrcxdblwvycngiu"

                    };
                    SMTP.EnableSsl = true;
                    SMTP.Send(PassRecMail);


                    lblResetParolMsg.Text = "Link-ul de resetare trimis! Verifica-ți adresa de Email";
                    lblResetParolMsg.ForeColor = System.Drawing.Color.Green;
                    txtEmailID.Text = string.Empty;                   
                }
                else
                {
                    lblResetParolMsg.Text = "Ops! Aceasta adresa de Email nu exista... Incearca din nou ";
                    lblResetParolMsg.ForeColor = System.Drawing.Color.Red;
                    txtEmailID.Text = string.Empty;
                }
            }
        }
    }
}
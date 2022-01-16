using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace bilet_alis_satis
{
    public partial class loginPage : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"data source=LAPTOP-RARDEHD1;initial catalog=mydatabase;integrated security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uyeOlbttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("newAccount.aspx");
        }

        protected void girisbttn_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From TBLLOGINS where KULLANICI=@P1 AND SIFRE=@P2", baglanti);
            komut.Parameters.AddWithValue("@P1", kullaniciAditxt.Text);
            komut.Parameters.AddWithValue("@P2", sifretxt.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("anaSayfa.aspx");
            }
            else
            {
                lblmesaj.Text = "Hatalı Bilgi Girdiniz.";
            }
            baglanti.Close();

        }
    }
}
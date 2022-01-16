using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace bilet_alis_satis
{
    public partial class newAccount : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"data source=LAPTOP-RARDEHD1;initial catalog=mydatabase;integrated security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void hesapOlstrbttn_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Insert into TBLLOGINS values(@KULLANICI,@SIFRE,@AD,@SOYAD,@MAIL)", baglanti);
            komut.Parameters.AddWithValue("AD", isimtxt.Text);
            komut.Parameters.AddWithValue("SOYAD", soyadtxt.Text);
            komut.Parameters.AddWithValue("MAIL", mailtxt.Text);
            komut.Parameters.AddWithValue("KULLANICI", kullaniciaditxt.Text);
            if (sifretxt.Text == sifreonaytxt.Text)
            {
                komut.Parameters.AddWithValue("SIFRE", sifretxt.Text);
                komut.ExecuteNonQuery();
                Response.Redirect("anaSayfa.aspx");
            }
            else
            {
                Label1.Text = "Girdiğiniz Şifreler Uyuşmuyor.";
            }

            

        }
    }
}
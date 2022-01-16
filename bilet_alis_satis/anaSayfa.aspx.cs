using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace bilet_alis_satis
{
    public partial class anaSayfa : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"data source=LAPTOP-RARDEHD1;initial catalog=mydatabase;integrated security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uyeOlbttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("newAccount.aspx");
        }

        protected void girisYapbttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginPage.aspx");
        }

        protected void anaSayfabttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("anaSayfa.aspx");
        }

        protected void date_SelectionChanged(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("Select BOS From dbo.TBLBUS where NEREDEN=@A1 AND NEREYE=@A2 AND TARIH=@A3", baglanti);
            komut2.Parameters.AddWithValue("@A1", neredenList.SelectedValue);
            komut2.Parameters.AddWithValue("@A2", nereyeList.SelectedValue);
            komut2.Parameters.AddWithValue("@A3", date.SelectedDate.ToShortDateString());
            SqlDataReader dr = komut2.ExecuteReader();
            if (dr.Read())
            {
                Label2.Text = Convert.ToString(dr["BOS"]);
            }
            baglanti.Close();
        }

        protected void biletArabttn_Click(object sender, EventArgs e)
        {
            if(Label2.Text == "")
            {
                Label3.Text = "Girmiş olduğunuz tarihte böyle bir sefer bulunmamaktadır.";
            }
            else if(Convert.ToInt32(Label2.Text) > 0 && Convert.ToInt32(Label2.Text) >= yolcuList.SelectedIndex)
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("INSERT INTO dbo.TBLBOOKINGS (NEREDEN, NEREYE, TARIH, SAYI, REZNO) VALUES (@P1,@P2, @P3, @P4, @P5)", baglanti);
                int y = Convert.ToInt32(Label2.Text);
                komut.Parameters.AddWithValue("@P1", neredenList.SelectedValue);
                komut.Parameters.AddWithValue("@P2", nereyeList.SelectedValue);
                komut.Parameters.AddWithValue("@P3", date.SelectedDate.ToShortDateString());
                komut.Parameters.AddWithValue("@P4", yolcuList.SelectedIndex);
                komut.Parameters.AddWithValue("@P5", y);
                komut.ExecuteNonQuery();

                SqlCommand komut3 = new SqlCommand("UPDATE TBLBUS SET BOS=@B4 WHERE NEREDEN=@B1 AND NEREYE=@B2 AND TARIH=@B3", baglanti);
                y = y - yolcuList.SelectedIndex;
                komut3.Parameters.AddWithValue("@B1", neredenList.SelectedValue);
                komut3.Parameters.AddWithValue("@B2", nereyeList.SelectedValue);
                komut3.Parameters.AddWithValue("@B3", date.SelectedDate.ToShortDateString());
                komut3.Parameters.AddWithValue("@B4", y);
                komut3.ExecuteNonQuery();

                SqlCommand komut4 = new SqlCommand("Select ID From dbo.TBLBOOKINGS where NEREDEN=@K1 AND NEREYE=@K2 AND TARIH=@K3 AND REZNO=@K4", baglanti);
                y = y + yolcuList.SelectedIndex;
                komut4.Parameters.AddWithValue("@K1", neredenList.SelectedValue);
                komut4.Parameters.AddWithValue("@K2", nereyeList.SelectedValue);
                komut4.Parameters.AddWithValue("@K3", date.SelectedDate.ToShortDateString());
                komut4.Parameters.AddWithValue("@K4", y);

                SqlDataReader dr = komut4.ExecuteReader();
                if (dr.Read())
                {
                    Label3.Text = "Rezervasyonunuz Yapılmıştır. Rezervasyon numaranız: " + Convert.ToString(dr["ID"]);
                }
                baglanti.Close();

                
            }

            else
            {
                Label3.Text = "Rezervasyonunuz Yer Olmadığı İçin Yapılamadı.";

            }

            baglanti.Close();
        }

        protected void rezbttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("rezervasyonlar.aspx");
        }

        protected void contactbttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bilet_alis_satis
{
    public partial class rezervasyonlar : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"data source=LAPTOP-RARDEHD1;initial catalog=mydatabase;integrated security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sorgubttn_Click(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(reznogirtxt.Text);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select TARIH, NEREDEN, NEREYE, SAYI From dbo.TBLBOOKINGS where ID=@A1", baglanti);
            komut.Parameters.AddWithValue("@A1", x);

            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                tarihlbl.Text = Convert.ToString(dr["TARIH"]);
                neredenlbl.Text = Convert.ToString(dr["NEREDEN"]);
                nereyelbl.Text = Convert.ToString(dr["NEREYE"]);
                kisilbl.Text = Convert.ToString(dr["SAYI"]);

            }
            baglanti.Close();


        }
    }
}
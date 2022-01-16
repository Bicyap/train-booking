using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bilet_alis_satis
{
    public partial class updatePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"].ToString());
            DataSet1TableAdapters.TBLLOGINSTableAdapter dt = new DataSet1TableAdapters.TBLLOGINSTableAdapter();
            IDtxt.Text = x.ToString();
            IDtxt.Enabled = false;

            if(Page.IsPostBack == false)
            {
                mailtxt.Text = dt.VeriGetir(Convert.ToInt32(IDtxt.Text))[0].MAIL;
                isimtxt.Text = dt.VeriGetir(Convert.ToInt32(IDtxt.Text))[0].AD;
                soyadtxt.Text = dt.VeriGetir(Convert.ToInt32(IDtxt.Text))[0].SOYAD;
                kullaniciaditxt.Text = dt.VeriGetir(Convert.ToInt32(IDtxt.Text))[0].KULLANICI;
                sifretxt.Text = dt.VeriGetir(Convert.ToInt32(IDtxt.Text))[0].SIFRE;
                sifreonaytxt.Text = dt.VeriGetir(Convert.ToInt32(IDtxt.Text))[0].SIFRE;
            }
        }

        protected void guncellemeBttn_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLLOGINSTableAdapter dt = new DataSet1TableAdapters.TBLLOGINSTableAdapter();
            if(sifretxt.Text == sifreonaytxt.Text)
            {
                dt.KisiGuncelle(kullaniciaditxt.Text, sifretxt.Text, isimtxt.Text, soyadtxt.Text, mailtxt.Text, Convert.ToInt32(IDtxt.Text));
                Response.Redirect("veriler.aspx");
            }
            else
            {
                Label1.Text = "Şifreler Uyuşmuyor.";
            }
        }
    }
}
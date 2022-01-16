using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bilet_alis_satis
{
    public partial class veriler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLLOGINSTableAdapter dt = new DataSet1TableAdapters.TBLLOGINSTableAdapter();
            myRepeater.DataSource = dt.AdminListesi();
            myRepeater.DataBind();

        }
    }
}
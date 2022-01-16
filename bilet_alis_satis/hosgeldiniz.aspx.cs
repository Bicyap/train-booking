using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bilet_alis_satis
{
    public partial class hosgeldiniz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void girisbttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginPage.aspx");
        }

        protected void uyebttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("newAccount.aspx");
        }
    }
}
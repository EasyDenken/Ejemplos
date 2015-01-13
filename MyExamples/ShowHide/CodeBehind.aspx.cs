using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class ShowHide_CodeBehind : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnClikShowHide_Click(object sender, EventArgs e)
    {
        if (Panel1.Visible == false)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
    }
}

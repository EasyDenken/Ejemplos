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

public partial class ShowHide_UsingJquery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
        Button1.Attributes.Add("onclick", "Hola();return false;");

   
        
    }



    protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl.SelectedValue == "open")
        {
            
            ClientScript.RegisterStartupScript(this.GetType(), "StartOpenScript", "Hola();", true);
        }
        else if (ddl.SelectedValue == "close")
        {

        }
    }
}

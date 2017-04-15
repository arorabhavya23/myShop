using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MobileDescription : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ShowAddtocart.aspx?var2=" + Request.QueryString["var1"].ToString());

    }
}
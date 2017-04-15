using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Videocon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = sender as ImageButton;
        string ProdId = btn.CommandArgument;
        Session["Prodid"] = ProdId;
        Response.Redirect("MobileDescription.aspx");


    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = sender as ImageButton;
        string ProdId = btn.CommandArgument;
        Session["Prodid"] = ProdId;
        Response.Redirect("MobileDescription.aspx");


    }
}
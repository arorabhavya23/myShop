using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ButtonViewCategory_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
        Panel3.Visible = false;
        //Panel4.Visible = false;
    }
    protected void ButtonViewSubCatg_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        //Panel4.Visible = false;
    }
    protected void ButtonViewProduct_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        //Panel4.Visible = false;
    }
    protected void ButtonViewOrders_Click(object sender, EventArgs e)
    {


        //Panel1.Visible = false;
        //Panel2.Visible = false;
        //Panel3.Visible = false;
        //Panel4.Visible = true;
    }
}
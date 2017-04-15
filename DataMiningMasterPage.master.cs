using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class DataMiningMasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection("Data Source=user-PC; initial catalog =ecomdatabase; Integrated Security=True;");
    SqlCommand cmd;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["muser"] != null)
        {
            LabelUser.Visible = true;
            LabelUser.Text = "Welcome "+Session["muser"].ToString();
            HyperLink6.Visible = false;
            LinkButtonLogOut.Visible = true;
            LinkButtonLogOut.Text = "Logout";
            


        }
        else if (Session["auser"] != null)
        {
            LabelUser.Text = Session["auser"].ToString();
            LinkButtonLogOut.Visible = true;
            LinkButtonLogOut.Text = "Logout";
        }


    }
    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search.aspx?pid='" + TextBoxSearch.Text+"'");
    }
   
}

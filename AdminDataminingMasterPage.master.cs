using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminDataminingMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["muser"] != null)
        {
            LabelUser.Text = Session["muser"].ToString();
            LinkButtonLogin.Text = "Logout";
            //LinkButtonRegister.Visible = false;
            LinkButtonEditProfile.Visible = true;

        }
        else if (Session["auser"] != null)
        {
            LabelUser.Text = Session["auser"].ToString();
            LinkButtonLogin.Text = "Logout";
            //LinkButtonRegister.Visible = false;
            LinkButtonEditProfile.Visible = true;

        }
        if (Session["auser"] == null)
        {

            Response.Redirect("../HomeDm.aspx");
        }

    }
    protected void LinkButtonLogin_Click(object sender, EventArgs e)
    {
        if (LinkButtonLogin.Text == "Login")
        {
            Response.Redirect("Login.aspx");
        }
        else if (LinkButtonLogin.Text == "Logout")
        {
            Session["muser"] = null;
            Session["auser"] = null;
            Response.Redirect("http://localhost:1056/HomeDM.aspx");
        }
    }
}

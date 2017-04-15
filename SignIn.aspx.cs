using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_SignIn : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=USER-PC;Initial Catalog=MBazaarDB;Integrated Security=True");
    SqlCommand cmd;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        try
        {

            con.Open();
            String query = "Select * from Login where name ='" + Login1.UserName + "' AND Password ='" + Login1.Password + "';";

            // String query = "Select * from login where Name like'" + Login1.UserName + "'and Password like'" + Login1.Password + "';";
            cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                if (dr["role"].ToString().Equals("user"))
                {
                    Session["muser"] = Login1.UserName;
                    Response.Redirect("HomeDm.aspx");
                }
                else if (dr["role"].ToString().Equals("user") && dr["role"].ToString().Equals("user"))
                {
                    Session["muser"] = Login1.UserName;
                    Response.Redirect("SignIn.aspx");
                }

                else
                {
                    Session["auser"] = Login1.UserName;
                    Response.Redirect("~/Admin/AdminHome.aspx");

                }

            }



        }
        catch (Exception ex)
        {

            Response.Write(ex.Message);
        }
        finally
        {
            con.Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUpDm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=USER-PC;Initial Catalog=MBazaarDB;Integrated Security=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                con.Open();
                String query = "insert into login values('" + TextBoxName.Text + "','" + TextBoxPassword.Text + "','user','" + TextBoxAddress.Text + "','" + TextBoxMobile.Text + "','" + TextBoxEmail.Text + "');";
                cmd = new SqlCommand(query, con);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Redirect("LoginDM.aspx");

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
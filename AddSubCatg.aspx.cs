using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_AddSubCatg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=USER-PC;Initial Catalog=MBazaarDB;Integrated Security=True;");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            con.Open();
            String query = "insert into SubCatg values("+DropDownList1.SelectedValue +",'"+ TextBox1.Text + "','" + TextBox2.Text + "');";
            cmd = new SqlCommand(query, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                
                Response.Redirect("~/Admin/AddSubCatg.aspx");

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
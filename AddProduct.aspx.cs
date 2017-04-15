using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_AddProduct : System.Web.UI.Page
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
            Random r = new Random();
            int num = r.Next(23212);
            String fpath ="~\\Upload\\"+ num + FileUpload1.FileName;
            String query = "insert into NewProduct values(" + DropDownList3.SelectedValue + "," + DropDownList2.SelectedValue + ",'" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + fpath + "','" + TextBox2.Text + "','" + TextBox5.Text + "');";
            cmd = new SqlCommand(query, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath(fpath));
                Response.Redirect("~/Admin/AddProduct.aspx");

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
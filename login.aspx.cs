using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=USER-PC;Initial Catalog=MBazaarDB;Integrated Security=True");
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["muser"] != null)
            Response.Redirect("HomePaget.aspx");
    }
    protected void BtnLogIn_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            string query = "select * from LogIn where EMailID='" + TBUsrID.Text + "' and Password='" + TBPass.Text + "'";
            cmd = new SqlCommand(query, con);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                if (dr["UserType"].ToString().Equals("M"))
                {
                    Session["muser"] = TBUsrID.Text;
                    Response.Redirect("HomeDM.aspx");
                }
                else if (dr["UserType"].ToString().Equals("A"))
                {
                    Session["aUser"] = TBUsrID.Text;
                    Response.Redirect("AdminHome.aspx");
                }

            }
            else
            {
                LabelError.Visible = true;
                LabelError.Text = "Invalid User ID or Password";
            }
        }
        catch (Exception ex)
        {
            LabelError.Visible = true;
            LabelError.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
    protected void BtnSignUp_Click(object sender, EventArgs e)
    {

        {
            try
            {
                con.Open();
                string query = "insert into Register (EMailID, UName) values('" + TBEmailID.Text + "','" + TBUserIDNew.Text + "')";
                cmd = new SqlCommand(query, con);
                int i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    cmd.CommandText = "insert into LogIn values('" + TBEmailID.Text + "','" + TBPassNew.Text + "','M')";
                    cmd.ExecuteNonQuery();
                    LabelRegister.Visible = true;
                    LabelRegister.Text = "Data sucessfully Inserted";
                    Response.Redirect("HomeDM.aspx");
                }
                else
                {
                    LabelRegister.ForeColor = System.Drawing.Color.Red;
                    LabelRegister.Visible = true;
                    LabelRegister.Text = "Some Error in code";
                }
            }
            catch (Exception ex)
            {
                LabelRegister.Visible = true;
                LabelRegister.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }

        }
    }

    protected void TBEmailID_TextChanged(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            string query = "select * from LogIn where EMailID='" + TBEmailID.Text + "'";
            cmd = new SqlCommand(query, con);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                LabelEmail.Visible = true;
            }
            else
            {
                LabelEmail.Visible = false;


            }
        }
        catch (Exception ex)
        {
            LabelEmail.Visible = true;
            LabelRegister.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }

    }
}
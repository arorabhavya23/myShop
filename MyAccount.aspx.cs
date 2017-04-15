using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MyAccount : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=USER-PC;Initial Catalog=MBazaarDB;Integrated Security=True");
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["muser"] == null)
            Response.Redirect("login.aspx");
        if (!IsPostBack)
        {
            con.Open();
            string query = "select * from Register where EMailID='" + Session["muser"] + "'";
            cmd = new SqlCommand(query, con);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                LblEmailID.Text = dr["EMailID"].ToString();
                LblUserName.Text = dr["UName"].ToString();

                LblMobile.Text = dr["Mobile"].ToString();
                LblAge.Text = dr["Age"].ToString();
                LblAddress.Text = dr["Address"].ToString();
                LblCity.Text = dr["City"].ToString();
                LblState.Text = dr["State"].ToString();
                LblPinCode.Text = dr["PinCode"].ToString();
            }
        }
    }
    protected void BtnEditProfile_Click(object sender, EventArgs e)
    {
        PanelViewProfile.Visible = false;
        PanelUpdateProfile.Visible = true;

        TBUserName.Text = LblUserName.Text;
        TBMobile.Text = LblMobile.Text;
        TBState.Text = LblState.Text;
        TBEmailId.Text = LblEmailID.Text;
        TBCity.Text = LblCity.Text;
        TBPinCode.Text = LblPinCode.Text;
        TBAddress.Text = LblAddress.Text;
        TBAge.Text = LblAge.Text;

        TBEmailId.Enabled = false;
    }
    protected void BtnUpdateProfile_Click(object sender, EventArgs e)
    {
        LblMessage.Visible = true;
        try
        {
            con.Open();
            string query = "Update Register set UName='" + TBUserName.Text + "',Mobile=" + TBMobile.Text + ",Age=" + TBAge.Text + ",Address='" + TBAddress.Text + "',City='" + TBCity.Text + "',State='" + TBState.Text + "',PinCode=" + TBPinCode.Text + "where EMailID='" + Session["muser"].ToString() + "'";
            cmd = new SqlCommand(query, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                LblMessage.Text = "Data Updated sucessfully";
                Response.Redirect("MyAccount.aspx");
            }

        }
        catch (Exception ex)
        {
            LblMessage.Text = ex.Message; ;
        }
        finally
        {
            con.Close();
        }
    }
}
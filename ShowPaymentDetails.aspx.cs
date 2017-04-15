using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Drawing;
using System.Data.SqlClient;
public partial class user_ShowPaymentDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=USER-PC;Initial Catalog=MBazaarDB;Integrated Security=True");
    DataTable dt;
    SqlDataAdapter ad;
    SqlCommand cmd;
  
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtcurrentdate.Text = DateTime.Now.ToString();
            txtcurrentdate.Enabled = false;

            dt = new DataTable();
            dt = (DataTable)Session["addtocart"];
           
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Session["addtocart"] = dt;
            Txtdate.Enabled = false;

            DropDownList1.Items.Insert(0, "--Select--");
            DropDownList1.Items.Insert(1, "Master Card");
            DropDownList1.Items.Insert(2, "Credit Card");
            DropDownList1.Items.Insert(3, "Debit Card");
            DropDownList1.Items.Insert(4, "American Express Card");
            DropDownList1.Items.Insert(5, "VISA Shopping Card");
        }
     
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        if (Calendar1.SelectedDate > DateTime.Now)
        {
            Txtdate.Enabled = true;
            Txtdate.Text = Calendar1.SelectedDate.ToLongDateString();
        }
        else
        {
            Txtdate.Text = "";
        }
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Cell.Enabled = false;
            e.Cell.BackColor = Color.White;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dt = new DataTable();
        dt = (DataTable)Session["addtocart"];
        string str = Session["UID"].ToString();
        string adrress = Session["shippingaddress"].ToString();
        if (Txtcardnumber.Text.Length == 15)
        {
            lblMessage.Text = "<font color=red>Please enter your 16 digit card number.</Font>";
            return;
        }
        if (Txtpwd.Text.Length == 3)
        {
            lblMessage.Text = "<font color=red>Please enter 4 digit Password.</Font>";
            return;
        }

        DateTime dates = new DateTime();
        dates = Convert.ToDateTime(txtcurrentdate.Text);
        string QueryOrder = "insert into order_detail values (" + str + ",'" + dates + "') select scope_identity()";
        cmd = new SqlCommand(QueryOrder,con);
        con.Open(); 
        var oid =cmd.ExecuteScalar();

        DateTime dp = new DateTime();
        dp = Convert.ToDateTime(Txtdate.Text);

        string QueryPayment = "insert into paymentdetail values('" + str + "','" + oid + "','" + DropDownList1.SelectedValue + "','" + Txtcardnumber.Text + "','" + dp + "')";
        cmd.CommandText = QueryPayment;
        cmd.ExecuteNonQuery();
       
        string QueryShipping = "insert into shippingdetail values('" + oid + "','" + adrress + "')";
        cmd.CommandText = QueryShipping;
        cmd.ExecuteNonQuery();
       
        Session["billnum"] = oid.ToString();
        Session["paymentmode"] = DropDownList1.SelectedItem.Text;
        Session["cardnumber"] = Txtcardnumber.Text;
        Session["xpirydate"] = Txtdate.Text;
        Session["currentdate"] = txtcurrentdate.Text;

        string ODetail = "";
        foreach (DataRow dr in dt.Rows)
        {
            ODetail = "insert into oderdetail values('" + oid + "','"+ str +"','" + dr["Productname"].ToString() + "','" + Convert.ToInt32(dr["Qty"]) + "','" + Convert.ToDouble(dr["total"]) + "')";
            cmd.CommandText = ODetail;
            cmd.ExecuteNonQuery();
        }
        con.Close();
        Response.Redirect("billgeneration.aspx");
    }
}

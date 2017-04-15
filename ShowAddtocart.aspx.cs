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
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class user_ShowAddtocart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=USER-PC;Initial Catalog=MBazaarDB;Integrated Security=True");
    DataTable dt;
    SqlDataAdapter ad;
    SqlCommand cmd;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // utils.SetCSS(this.Master, "A4", "current");
            if (Request.QueryString["var2"] != null)
                BindGrid();
            else
            {
                GridView1.DataSource = (DataTable)Session["addtocart"];
                GridView1.DataBind();

                double sum = 0.00;
                foreach (GridViewRow dr in GridView1.Rows)
                {
                    TextBox lb = (TextBox)dr.Cells[1].FindControl("tb1");
                    Label lbOff = (Label)dr.Cells[3].FindControl("lblOffer");
                    Label lTotal = (Label)dr.Cells[4].FindControl("Label1");

                    sum = sum + Convert.ToDouble(lTotal.Text);
                }
                lbltotal.Text = "Total Amount - Rs." + sum.ToString();
            }
        }
    }

    public void BindGrid()
    {
        SqlDataReader reader;
        string query = "select ProdId,ProductName,MRP,OurPrice from NewProduct where ProdId=" + Request.QueryString["var2"].ToString();
        cmd = new System.Data.SqlClient.SqlCommand(query,con);
        con.Open();
        reader = cmd.ExecuteReader();
        reader.Read();
        dt = new DataTable();
        dt.Columns.Add("ProductName");
        dt.Columns.Add("Qty");
        dt.Columns.Add("MRP");
        dt.Columns.Add("OurPrice");
        dt.Columns.Add("total");
        dt.Columns.Add("ProdId");

        if (Session["addtocart"] == null)
        {
            DataRow dr = dt.NewRow();
            dr[0] = reader["ProductName"].ToString();
            dr[1] = 1;
            dr[2] = reader["MRP"].ToString();
            dr[3] = reader["OurPrice"].ToString();
            dr[4] = reader["OurPrice"].ToString();
            dt.Rows.Add(dr);
            Session["addtocart"] = dt;
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            dt = (DataTable)Session["addtocart"];
            DataRow dr = dt.NewRow();
            dr[0] = reader["ProductName"].ToString();
            dr[1] = 1;
            dr[2] = reader["MRP"].ToString();
            dr[3] = reader["OurPrice"].ToString();
            dr[4] = reader["OurPrice"].ToString();
            dt.Rows.Add(dr);
            Session["addtocart"] = dt;
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
	Session["ITEMS"] = dt.Rows.Count;
        //gettotal();
    }
  
    public void gettotal()
    {
        double sum = 0.00;
        int index = 0;
        dt = (DataTable)Session["addtocart"];
        foreach (GridViewRow dr in GridView1.Rows)
        {
            TextBox lb = (TextBox)dr.Cells[1].FindControl("tb1");
            Label lbOff = (Label)dr.Cells[3].FindControl("lblOffer");
            Label lTotal = (Label)dr.Cells[4].FindControl("Label1");
            lTotal.Text = (Convert.ToDouble(lb.Text) * Convert.ToDouble(lbOff.Text.Trim())).ToString();

            sum = sum + Convert.ToDouble(lTotal.Text.Trim());

            dt.Rows[index]["Qty"] = lb.Text;
            dt.Rows[index]["Total"] = lTotal.Text;
            index++;
        }
        Session["addtocart"] = dt;
        Session["ITEMS"] = dt.Rows.Count;
        GridView1.DataSource = dt;
        GridView1.DataBind();
        
        lbltotal.Text = "Total Amount - Rs." + sum.ToString();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        dt = (DataTable)Session["addtocart"];
        dt.Rows[e.RowIndex].Delete();
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Session["ITEMS"] = dt.Rows.Count;
        Session["addtocart"] = dt;
        gettotal();
        Response.Redirect("ShowAddtocart.aspx");
    }

    protected void tb1_TextChanged(object sender, EventArgs e)
    {
        gettotal();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["muser"] == null)
        {
            Response.Redirect("userLogin.aspx?q=1");
        }
        else
        {
            Response.Redirect("ShippingDetails.aspx");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

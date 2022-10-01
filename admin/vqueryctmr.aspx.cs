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

public partial class admin_vqueryctmr : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //time.Text = DateTime.Now.ToString();
            getcid();
        }
    }

private void getcid()
{
    //throw new Exception("The method or operation is not implemented.");
    customer obj1 = new customer();
    DataSet ds = obj1.getid();
    cid.DataSource = ds;
    //if (ds.Tables[0].Rows.Count >= 0)
    //    Response.Write("<script>alert('not exist')</script>");
    //else
        cid.DataTextField = "customerid";
    cid.DataValueField = "customerid";
    cid.DataBind();
}



    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from query where customerid='" + cid.SelectedItem.Text + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count <= 0)
            Response.Write("<script>alert('not exist')</script>");
        else
        GridView1.DataSource = ds;
        GridView1.DataBind();


    }
}

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
public partial class admin_view_emp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            time.Text = DateTime.Now.ToString();
            getcid();
        }

    }

    private void getcid()
    {
        //throw new Exception("The method or operation is not implemented.");
        customer obj1 = new customer();
        DataSet ds = obj1.getid();
        cid.DataSource = ds;
        cid.DataTextField = "customerid";
        cid.DataValueField = "customerid";
        cid.DataBind();
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into reporttocustomer values('" + date.Text + "','" + time.Text + "','" +cid.SelectedItem.Text + "','" + cname.Text + "','" + TextBox1.Text + "')", con);
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
            Response.Write("<script>alert('submited')</script>");
        else
            Response.Write("<script>alert('error')</script>");

    }
    protected void cid_SelectedIndexChanged(object sender, EventArgs e)
    {
        //bool s = false;
        customer obj2 = new customer();
        DataSet ds2 = obj2.getid();
        int i = ds2.Tables[0].Rows.Count;
        while (--i > 0)
        {
            if (cid.SelectedItem.Text == ds2.Tables[0].Rows[i]["customerid"].ToString())
            {
                cname.Text = ds2.Tables[0].Rows[i]["name"].ToString();
            }
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cid.SelectedIndex = 0;
        cname.Text = "";
        time.Text = "";
        date.Text = "";
        TextBox1.Text = "";

    }
}

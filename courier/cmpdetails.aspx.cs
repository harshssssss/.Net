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

public partial class courier_cmpdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    protected void submit_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("insert into companydetails values(" + int.Parse(cid.Text) + ",'" +contactname.Text +"','" + cname.Text + "','" + oficeno.Text + "','" + cmailid.Text + "','" + paytype.Text + "','" + maxcredit.Text + "','" + caddress.Text + "','" + contact.Text+"')", con);
   int res= cmd.ExecuteNonQuery();
        if(res>0)
            Response.Write("<script>alert('inserted')</script>");
        else
            Response.Write("<script>alert('Error')</script>");




    }


    protected void clear_Click(object sender, EventArgs e)
    {
        cid.Text = "";
        cname.Text = "";
        caddress.Text = "";
        oficeno.Text = "";
        maxcredit.Text = "";
        paytype.Text = "";
        contact.Text = "";
        contactname.Text = "";
        cmailid.Text = "";

    }
    protected void view_Click(object sender, EventArgs e)
    {

    }
}

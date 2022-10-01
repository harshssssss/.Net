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

public partial class courier_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void signin_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from  emp where empid='" + txtuid.Text + "' and password='" + pwd.Text + "'", con);

        int i = Convert.ToInt16(cmd.ExecuteScalar());
        if (i > 0)
        {
            Response.Redirect("~/courier/courierprelvs.aspx");

        }
        else
        {
            Response.Write("<script>alert('wrong id or password please try again')</script>");
        }
    }
}

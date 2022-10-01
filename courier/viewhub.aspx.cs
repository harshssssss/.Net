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

public partial class courier_viewhub : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void view_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from hubdetails where hubid=" + Convert.ToInt16(hubid.Text), con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count <= 0)
        {
            Response.Write("<script>alert('not exist')</script>");
           
        }
        else
            
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}

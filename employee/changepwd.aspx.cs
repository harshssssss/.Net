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

public partial class employee_changepwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void sub_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("update emp set password='" + newpwd.Text + "' where empid='" + empid.Text + "' and password='"+oldpwd.Text+"'", con);
        int res = cmd.ExecuteNonQuery();
        if (res > 0)
            Label6.Text = "sucessfully changed";
        else
            Label6.Text = "";

    }
    protected void empid_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from emp where empid='" + empid.Text+"'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if(ds.Tables[0].Rows.Count<=0)
            Response.Write("<script>alert('not exist')</script>");
        

    }
    protected void clear_Click(object sender, EventArgs e)
    {
        empid.Text = "";
        oldpwd.Text = "";
        newpwd.Text = "";
        confirmpwd.Text = "";


    }
}

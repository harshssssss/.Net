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

public partial class employee_emplogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void signin_Click(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

        con.Open();

      SqlCommand cmd=new SqlCommand("select count(*) from emp where empid='" + txtuid.Text + "' and password='" + pwd.Text+"'",con);
     
    int i= Convert.ToInt16( cmd.ExecuteScalar());
    
     if (i>0)
     {
          Response.Redirect("~/employee/empprelvs.aspx");
     }
     else
     {
         Response.Write("<script>alert('Invalid username or password Try again')</script>");
     }
        
     }
    }


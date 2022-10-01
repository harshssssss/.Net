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

public partial class courier_pickupcentre : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlCommand cmd=new SqlCommand("insert into pickup values( "+int.Parse(pickpno.Text)+",'"+pdate.Text+"','"+ptime.Text+"','"+pname.Text+"','"+ idno. Text+"','"+ idproof.Text+"','"+padrs.Text+"','"+pphno. Text+"')",con);
        int res=cmd.ExecuteNonQuery();
        if(res>0)
            Response.Write("<script>aler('inserte')</script>");
        else
Response.Write("<script>aler('Error')</script>");
    }
    
protected void  clear_Click(object sender, EventArgs e)
{
    pickpno.Text="";
    pdate.Text="";
    ptime.Text="";
    pname.Text="";
    idproof.Text="";
    idno.Text="";
    padrs.Text="";
    pphno.Text="";


}
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}

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

public partial class courier_incomingdtls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void sub_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd=new SqlCommand("insert into incomingdetails values( "+int.Parse( ipno.Text)+",'"+idate.Text+"','"+itime.Text+"','"+istate.Text+"','"+city.Text+"','"+area.Text+"','"+isource.Text+"','"+idestination.Text+"','"+courierby.Text+"')",con);
        int res = cmd.ExecuteNonQuery();
        if(res > 0)
            Response.Write("<script>alert('inserte')</script>");
        else
Response.Write("<script>alert('Error')</script>");
    }
    protected void clear_Click(object sender, EventArgs e)
    {
        ipno.Text = "";
        idate.Text = "";
        itime.Text = "";
        istate.Text = "";
        city.Text = "";
        area.Text = "";
        isource.Text = "";
        idestination.Text = "";
        courierby.Text = "";

    }
    protected void ipno_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from incomingdetails where pno=" +int.Parse( ipno.Text), con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Write("<script>alert('pno already exist')</script>");
           ipno.Text = "";

        }    
    }
}

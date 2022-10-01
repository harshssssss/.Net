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

public partial class courier_hubrates : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void submit_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into hubdetails values("+int.Parse(hubid.Text)+",'"+hname.Text+"','"+hphno.Text+"','"+hfaxno.Text+"',"+int.Parse(weight.Text)+","+int.Parse( hrate.Text)+",'"+state.Text+"','"+city.Text+"','"+haddress.Text+"')",con);
    int res=cmd.ExecuteNonQuery();
        if(res>0)
            Response.Write("<script>alert('inserted')</script>");
        else
Response.Write("<script>alert('error')</script>");
}
    protected void clear_Click(object sender, EventArgs e)
    {
        hubid.Text = "";
        hname.Text = "";
        state.Text = "";
        city.Text = "";
        hphno.Text = "";
        hfaxno.Text = "";
        weight.Text = "";
        hrate.Text = "";
        haddress.Text = "";
    }
    protected void hubid_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from  hubdetails where hubid=" +hubid.Text, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Write("<script>alert('pno already exist')</script>");
            hubid.Text = "";

        }    
    }
}

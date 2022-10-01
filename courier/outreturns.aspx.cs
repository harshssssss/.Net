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

public partial class courier_outreturns : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        protected void Button1_Click(object sender, EventArgs e)
    {
        string st="";
        if(RadioButton1.Checked)
            st=RadioButton1.Text;
        else
            st=RadioButton2.Text;
        
        con.Open();
        SqlCommand cmd=new SqlCommand("insert into outreturns values( "+int.Parse( opno.Text)+",'"+odate.Text+"','"+otime.Text+"','"+st+"','"+obookeddate.Text+"','"+odelivereddate.Text+"','"+booked.Text+"','"+expectedda.Text+"','"+reason.Text+"')",con);
        int res=cmd.ExecuteNonQuery();
        if(res>0)
            Response.Write("<script>aler('inserte')</script>");
        else
Response.Write("<script>aler('Error')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        opno.Text = "";
        odate.Text = "";
        otime.Text = "";
        obookeddate.Text = "";
        odelivereddate.Text = "";
        booked.Text = "";
        expectedda.Text = "";
        reason.Text = "";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
    }

    protected void opno_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from outreturns where pno=" +int.Parse( opno.Text), con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Write("<script>alert('pno already exist')</script>");
            opno.Text = "";

        }    
    }
}

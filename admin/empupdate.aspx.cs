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

public partial class admin_empupdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        updt();
    }

    private void updt()
    {
      
        //throw new Exception("The method or operation is not implemented.");
        emp obj1 = new emp();
        obj1.empid = Session["id"].ToString();
        //DataSet ds = obj1.updtbl();
        DataSet ds = obj1.empview();
        id.Text = ds.Tables[0].Rows[0]["empid"].ToString();
        name.Text = ds.Tables[0].Rows[0]["empname"].ToString();
        adrs.Text = ds.Tables[0].Rows[0]["address"].ToString();
        email.Text = ds.Tables[0].Rows[0]["email"].ToString();
        phno.Text = ds.Tables[0].Rows[0]["phno"].ToString();
        dob.Text = ds.Tables[0].Rows[0]["dob"].ToString();
        gen.Text = ds.Tables[0].Rows[0]["gender"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        empupdt();
    }

    private void empupdt()
    {
        //throw new Exception("The method or operation is not implemented.");
        emp obj2 = new emp();
        obj2.empid = id.Text;
        obj2.ename = name.Text;
        obj2.dob = dob.Text;
        obj2.gen = gen.Text;
        obj2.emailid = email.Text;
        obj2.phno = phno.Text;
        obj2.address = adrs.Text;
        int res = obj2.empupdt(); 
       if (res > 0)
           Response.Write("<script>alert('sucessfully updated')</script>");
       else
           Response.Write("<script>alert('Error')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        name.Text = "";
        dob.Text = "";
        gen.Text = "";
        adrs.Text = "";
        email.Text = "";
        phno.Text="";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/adminprelvs.aspx");
    }
}

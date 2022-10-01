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

public partial class admin_empdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    del.Attributes.Add("onclick", "return f1();");
        //}
            eId();
    }

    private void eId()
    {
        //throw new Exception("The method or operation is not implemented.");
        emp obj1 = new emp();
        DataSet ds = obj1.bleid();
        empid.DataSource = ds;
        empid.DataTextField = "empid";
        empid.DataValueField = "empid";
        empid.DataBind();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView2.Visible = false;
        Button2.Enabled = true;
        del.Enabled = true;
        View();
    }

    private void View()
    {
        //throw new Exception("The method or operation is not implemented.");
        emp obj2 = new emp();
        obj2.empid =empid.SelectedItem.Text;
        DataSet ds2 = obj2.empview();
        GridView1.DataSource = ds2;
        GridView1.DataBind();
        Session["id"] = empid.SelectedItem.Text;  
    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/empupdate.aspx");
    }
    protected void viewall_Click(object sender, EventArgs e)
    {
        Button2.Enabled = false;
        GridView2.Visible = true;
        GridView1.Visible = false;
        del.Enabled = false;
        viewal();
    }

    private void viewal()
    {
        //throw new Exception("The method or operation is not implemented.");
        emp obj3 = new emp();
        DataSet ds = obj3.viewal();
        GridView2.DataSource = ds;
        GridView2.DataBind();


        
    }
    protected void del_Click(object sender, EventArgs e)
    {
        
      
        delt();

    }

    private void delt()
    {
        //throw new Exception("The method or operation is not implemented.");
        emp obj4=new emp();
        obj4.empid = empid.SelectedItem.Text;
        int res=obj4.empdel();
        GridView1.Visible = false;
        if (res > 0)
            Response.Write("<script>alert('rec deleted')<script>");
        else
            Response.Write("<script>alert('rec not deleted')<script>");

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/adminprelvs.aspx");
    }
}

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

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if(!IsPostBack)
        getid();

    }
    DataSet ds = new DataSet();

    private void getid()
    {
        //throw new Exception("The method or operation is not implemented.");
         emp obj1 = new emp();
        DataSet ds = obj1.bleid();
       eid.DataSource = ds;
       eid.DataTextField = "empid";
      eid.DataValueField = "empid";
        DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        GridView2.Visible = false;
        blpayslip obj2 = new blpayslip();
        bool s = false;
        DataSet ds = obj2.getsal();
        int i = ds.Tables[0].Rows.Count;
        while(--i>0)
        {
            if (eid.SelectedItem.Text == ds.Tables[0].Rows[i]["empid"].ToString())
            {
                GridView1.Visible = true;
                s = true;
                DataTable dt1 = ds.Tables[0].Clone();
                DataRow dr1 = dt1.NewRow();
                dr1.ItemArray = ds.Tables[0].Rows[i].ItemArray;
                dt1.Rows.Add(dr1);
                GridView1.DataSource = dt1;
                GridView1.DataBind();

            }
            
            }
            if (s == false)
            {
                GridView1.Visible = false;
                Response.Write("<script>alert('Record not exist')</script>");
            }


    }

   
    protected void viewal_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
        blpayslip obj3=new blpayslip();
        ds=obj3.getsal();
        GridView2.DataSource = ds;
        GridView2.DataBind();
        GridView1.Visible = false;
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/adminprelvs.aspx");
    }
}

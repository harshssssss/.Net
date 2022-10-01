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

public partial class admin_delete_an_emp : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    bool valid = false;
    protected void Page_Load(object sender, EventArgs e)
    {

       
            peid();
            for (int i = 1; i <= 31; i++)
            {
                dd.Items.Add(i.ToString());
            }
            for (int j = 1; j <= 12; j++)
            {
                mm.Items.Add(j.ToString());
            }
            for (int k = 1990; k < 2010; k++)
            {
                yy.Items.Add(k.ToString());
            }
       
        
    }
    //static string name;
    private void peid()
    {
        //throw new Exception("The method or operation is not implemented.");
        emp obj1 = new emp();
        ds = obj1.bleid();

        Idemp.DataSource = ds;
        Idemp.DataTextField = "empid";
        Idemp.DataValueField = "empid";
        Idemp.DataBind();
        ename.ReadOnly = true;
        netsal.ReadOnly = true;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        if(valid)
        payinsert();
    }

    private void payinsert()
    {
        //throw new Exception("The method or operation is not implemented.");
        blpayslip obj1 = new blpayslip();
        obj1.empid = Idemp.SelectedItem.Text;
        obj1.empname = ename.Text;
        obj1.salary = sal.Text;
        obj1.advances = advance.Text;
        obj1.incentives = incentiv.Text;
        //obj1.netsal = netsal.Text;
      Int32 sum   = Convert.ToInt32(sal.Text) + Convert.ToInt32(advance.Text) + Convert.ToInt32(incentiv.Text);
      obj1.netsal = Convert.ToString(sum);
        obj1.dosal = dd.SelectedItem.Text + "/" + mm.SelectedItem.Text + "/" + yy.SelectedItem.Text;
        int res = obj1.payinsert();
        if (res > 0)
            Label8.Visible = true;
        else
            Response.Write("<script>alert('Error')</script>");

    }
    protected void Idemp_SelectedIndexChanged(object sender, EventArgs e)
    {
        int i = ds.Tables[0].Rows.Count;
        while (--i >= 0)
        {
            if (Idemp.SelectedItem.Text == ds.Tables[0].Rows[i][0].ToString())
                ename.Text = ds.Tables[0].Rows[i]["empname"].ToString();

            //i = i - 1;
        }

        
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Idemp.SelectedIndex = 0;
        ename.Text = "";
        sal.Text = "";
        advance.Text = "";
        incentiv.Text = "";
        netsal.Text = "";
        dd.SelectedIndex=0;
        mm.SelectedIndex=0;
        yy.SelectedIndex=0;
    }
    protected void check(object source, ServerValidateEventArgs args)
    {
        
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        blpayslip obj2 = new blpayslip();
        obj2.empid = Idemp.SelectedItem.Text;
        DataSet ds2 = obj2.check();
        
        if (Convert.ToInt16(ds2.Tables[0].Rows[0][0]) > 0)
        {
            //if (Idemp.SelectedItem.Text == ds.Tables[0].Rows[0]["empid"].ToString())
            valid = false;
            args.IsValid = false;
        }
        else
        {
            valid = true;
            args.IsValid = true;
        }
    }
}


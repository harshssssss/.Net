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

public partial class admin_adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        empid.ReadOnly = true;
        for(int i=1;i<32; i++)
        {
            dd.Items.Add(i.ToString());
        }

        for (int j = 1; j < 13; j++)
        {
            mm.Items.Add(j.ToString());
        }
        for (int k = 1980;k< 2010; k++)
        {
            yyyy.Items.Add(k.ToString());
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        insert();
    }

    private void insert()
    {
        //throw new Exception("The method or operation is not implemented.");
        emp obj1 = new emp();
        //obj1.empid = int.Parse(empid.Text);
        obj1.ename = ename.Text;
        obj1.epassword = epwd.Text;
        obj1.dob = mm.SelectedItem.Text +"/"+ dd.SelectedItem.Text +"/"+ yyyy.SelectedItem.Text;
            if(male.Checked==true)
                obj1.gen=male.Text;
        else
                obj1.gen=female.Text;
            obj1.address = addrs.Text;
        obj1.emailid = emailid.Text;
        obj1.phno = ephno.Text;
        int res = obj1.blinsert();
        if(res>0)
            Response.Write("<script>alert('inserted')</script>");
        else
            Response.Write("<script>alert('error')</script>");

        


    }
    protected void clear_Click(object sender, EventArgs e)
    {
        ename.Text = "";
        addrs.Text = "";
        phno.Text = "";
        emailid.Text = "";
        mm.SelectedIndex = 0;
        yyyy.SelectedIndex = 0;
        dd.SelectedIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/adminprelvs.aspx");
    }
}

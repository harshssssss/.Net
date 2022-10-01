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

public partial class customer_customerreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 1; i < 32; i++)
        {
            dd.Items.Add(i.ToString());

        }
        for (int j = 1; j < 13; j++)
        {
            mm.Items.Add(j.ToString());
        }
        for (int m = 1980; m < 2010; m++)
        {
            yy.Items.Add(m.ToString());
        }

    }
    string gen = "";

    protected void submit_Click(object sender, EventArgs e)
    {
        if (male.Checked)
        {
            gen = male.Text;

        }
        else
        {
            gen = female.Text;
        }
        customer obj1 = new customer();
        obj1.customername = cname.Text;
        obj1.cpassword = cpwd.Text;
        obj1.cdob = dd.SelectedItem.Text + "/" + mm.SelectedItem.Text + "/" + yy.SelectedItem.Text;
        obj1.cgender = gen;
        obj1.caddress = caddrs.Text;
        obj1.cemail = cemail.Text;
        obj1.cphno = cphno.Text;
        int res = obj1.insert();
        if (res > 0)
            Response.Write("<script>alert('inserted')</script>");
        else
            Response.Write("<script>alert('Error')</script>");
    }
    protected void Clear_Click(object sender, EventArgs e)
    {
        cname.Text = "";
        cpwd.Text = "";
        TextBox1.Text = "";
        dd.SelectedIndex = 0;
        mm.SelectedIndex = 0;
        yy.SelectedIndex = 0;
        caddrs.Text="";
        cemail.Text = "";
        cphno.Text = "";

    }
}

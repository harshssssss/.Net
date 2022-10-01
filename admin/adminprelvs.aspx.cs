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

public partial class admin_adminprelvs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void ademp_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/addemp.aspx");
    }
    protected void empdtl_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/empdetails.aspx");
    }
    protected void payslip_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/payslip.aspx");
    }
    protected void saldtl_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/saldetails.aspx");
    }

    protected void rptcstr_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/rptcustomer.aspx");
    }
    protected void vqcstr_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/vqueryctmr.aspx");
    }
}

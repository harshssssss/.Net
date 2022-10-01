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

public partial class customer_cstmrdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            getid();
        }
    }

    private void getid()
    {
        //throw new Exception("The method or operation is not implemented.");
        customer obj1 = new customer();
        DataSet ds= obj1.getid();
        cid.DataSource = ds;
        cid.DataTextField = "customerid";
        cid.DataValueField = "customerid";
        cid.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        View();
    }

    private void View()
    {
        //throw new Exception("The method or operation is not implemented.");
        customer obj2 = new customer();
        obj2.customerid = cid.SelectedItem.Text;
      DataSet ds2=  obj2.view();
      GridView1.DataSource = ds2;
      GridView1.DataBind();


    }
}

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

public partial class courier_viewbooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        blbookdtl obj1 = new blbookdtl();
        obj1.pno = int.Parse(pno.Text);
        DataSet ds = obj1.show();
        if (ds.Tables[0].Rows.Count > 0)
        {
          DetailsView1.DataSource = ds;
          DetailsView1. DataBind();
        }
        else
            Response.Write("<script>alert('not exist')</script>");


      
    }
}

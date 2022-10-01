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

public partial class courier_bookingdtls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Pno.ReadOnly = false;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        insert();
    }

    private void insert()
    {
        //throw new Exception("The method or operation is not implemented.");
        blbookdtl obj1 = new blbookdtl();
        obj1.amount = int.Parse(amount.Text);
        obj1.area=area.SelectedItem.Text;
        obj1.bdate=dat.Text;
        obj1.bookedby=bookby.SelectedItem.Text;
        obj1.btime=btime.Text;
        obj1.daddress=daddress.Text;
        obj1.dname=dname.Text;
        obj1.dphno=dphno.Text;
        obj1.name=name.Text;
        obj1.pno=int.Parse( Pno.Text);
        obj1.source=source.Text;
        obj1.sourceaddress=saddress.Text;
        obj1.sourcename=sname.Text;
        obj1.sourcephno=sphno.Text;
        obj1.state=state.Text;
        obj1.destination = destination.Text;
        obj1.weight=int.Parse(weight.Text);
        obj1.city = city.SelectedItem.Text;
       int res= obj1.inserted();
       if (res > 0)
           Response.Write("<script>alert('inserted')</script>");
        else
           Response.Write("<script>alert('Error')</script>");
        
    }
    protected void clear_Click(object sender, EventArgs e)
    {
        amount.Text="";
       area.SelectedIndex=0;
         dat.Text="";
        bookby.SelectedIndex=0;
         btime.Text="";
         daddress.Text="";
      dname.Text="";
        dphno.Text="";
         name.Text="";
        Pno.Text="";
        source.Text="";
       saddress.Text="";
         sname.Text="";
        sphno.Text="";
        state.Text="";
       destination.Text="";
       weight.Text = "";
        city.SelectedIndex = 0;
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
 
    protected void Pno_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from bookingform  where pno=" + Pno.Text, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Write("<script>alert('pno already exist')</script>");

        }

    }
    protected void view_Click(object sender, EventArgs e)
    {
        show();

    }

    private void show()
    {
        ////throw new Exception("The method or operation is not implemented.");
        //blbookdtl obj1 = new blbookdtl();
        //obj1.pno = Pno.Text;
        //DataSet ds2 = obj1.show();
        Response.Redirect("~/courier/viewbooking.aspx");

    }
    protected void update_Click(object sender, EventArgs e)
    {
        Pno.ReadOnly = true;
        updat();

    }

    private void updat()
    {
        //throw new Exception("The method or operation is not implemented.");
        blbookdtl obj2 = new blbookdtl();
        obj2.amount = int.Parse(amount.Text);
        obj2.area = area.SelectedItem.Text;
        obj2.bdate = dat.Text;
        obj2.bookedby = bookby.SelectedItem.Text;
        obj2.btime = btime.Text;
        obj2.daddress = daddress.Text;
        obj2.dname = dname.Text;
        obj2.dphno = dphno.Text;
        obj2.name = name.Text;
        obj2.pno = int.Parse(Pno.Text);
        obj2.source = source.Text;
        obj2.sourceaddress = saddress.Text;
        obj2.sourcename = sname.Text;
        obj2.sourcephno = sphno.Text;
        obj2.state = state.Text;
        obj2.destination = destination.Text;
        obj2.weight = int.Parse(weight.Text);
        obj2.city = city.SelectedItem.Text;
        int res = obj2.updat();
        if (res > 0)
            Response.Write("<script>alert('update')</script>");
        else
            Response.Write("<script>alert('Error')</script>");
        
    }
}

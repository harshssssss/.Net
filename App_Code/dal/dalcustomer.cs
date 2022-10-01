using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for dalcustomer
/// </summary>
public class dalcustomer
{
	public dalcustomer()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    internal int insert(customer customer)
    {
        //throw new Exception("The method or operation is not implemented.");
        conn.Open();
        SqlCommand cmd = new SqlCommand("sp_customer", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@name", customer.customername);
        cmd.Parameters.AddWithValue("@password", customer.cpassword);
        cmd.Parameters.AddWithValue("@dob", customer.cdob);
        cmd.Parameters.AddWithValue("@gender", customer.cgender);
        cmd.Parameters.AddWithValue("@address", customer.caddress);
        cmd.Parameters.AddWithValue("@email", customer.cemail);
        cmd.Parameters.AddWithValue("@phno", customer.cphno);
        cmd.Parameters.AddWithValue("type", 'i');
        return cmd.ExecuteNonQuery();


    }

    public DataSet getid(customer customer)
    {
        //throw new Exception("The method or operation is not implemented.");
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select customerid,name from customerreg",conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return (ds);

       
    }

    internal DataSet view(customer customer)
    {
        //throw new Exception("The method or operation is not implemented.");
        conn.Open();
        SqlDataAdapter da2 = new SqlDataAdapter("sp_customer", conn);
        da2.SelectCommand.CommandType = CommandType.StoredProcedure;
        da2.SelectCommand.Parameters.AddWithValue("@customerid", customer.customerid);
        da2.SelectCommand.Parameters.AddWithValue("@Type", 'v');
        DataSet ds = new DataSet();
        da2.Fill(ds);
        return(ds);

    }
}

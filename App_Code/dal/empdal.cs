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
/// Summary description for emp
/// </summary>
public class empdal
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	public empdal()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    internal int insetdal(emp emp)
    {
        //throw new Exception("The method or operation is not implemented.");

        
        conn.Open();
        SqlCommand da = new SqlCommand("sremp",conn); 

            da.CommandType = CommandType.StoredProcedure;
        //da.Parameters.AddWithValue("empid",emp.empid);
        da.Parameters.AddWithValue("@empname", emp.ename);
        da.Parameters.AddWithValue("@password", emp.epassword);
        da.Parameters.AddWithValue("@dob", emp.dob);
        da.Parameters.AddWithValue("@gender", emp.gen);
        da.Parameters.AddWithValue("@address", emp.address);
        da.Parameters.AddWithValue("@email", emp.emailid);
        da.Parameters.AddWithValue("@phno", emp.phno);
        da.Parameters.AddWithValue("@type",'i');
        return da.ExecuteNonQuery();
        conn.Close();



    }

    public DataSet daleid(emp emp)
    {
        //throw new Exception("The method or operation is not implemented.");
        //SqlConnection con1=new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        conn.Open();
        SqlDataAdapter da1=new SqlDataAdapter("select empid,empname from emp",conn);
        DataSet ds1=new DataSet();
        da1.Fill(ds1);
        return ds1;
        conn.Close();
    }

    internal DataSet viewemp(emp emp)
    {
        //throw new Exception("The method or operation is not implemented.");
        //SqlConnection con2=new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        conn.Open();
        SqlDataAdapter da2=new SqlDataAdapter ("sremp",conn);
        da2.SelectCommand.CommandType=CommandType.StoredProcedure;
        da2.SelectCommand.Parameters.AddWithValue("empid",emp.empid);
        da2.SelectCommand.Parameters.AddWithValue("type",'s');
        DataSet ds2=new DataSet();
        da2.Fill(ds2);
        return ds2;
        conn.Close();
    }





    internal int dalupdat(emp emp)
    {
        //throw new Exception("The method or operation is not implemented.");
        conn.Open();
        SqlCommand cmd2 = new SqlCommand("sremp", conn);
       cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.Parameters.AddWithValue("empid",emp.empid);
       cmd2.Parameters.AddWithValue("@empname", emp.ename);
       //cmd2.Parameters.AddWithValue("@password", emp.epassword);
       cmd2.Parameters.AddWithValue("@dob", emp.dob);
       cmd2.Parameters.AddWithValue("@gender", emp.gen);
        cmd2.Parameters.AddWithValue("@address", emp.address);
        cmd2.Parameters.AddWithValue("@email", emp.emailid);
        cmd2.Parameters.AddWithValue("@phno", emp.phno);
        cmd2.Parameters.AddWithValue("@type", 'u');
        return cmd2.ExecuteNonQuery();
        conn.Close();
    }

    internal DataSet  viewal(emp emp)
    {
        //throw new Exception("The method or operation is not implemented.");
        conn.Open();
        SqlDataAdapter da2 = new SqlDataAdapter("sremp", conn);
        da2.SelectCommand.CommandType = CommandType.StoredProcedure;
        da2.SelectCommand.Parameters.AddWithValue("@type",'v');
        DataSet ds = new DataSet();
        da2.Fill(ds);
        return (ds);
    }

    internal int empdel(emp emp)
    {
        //throw new Exception("The method or operation is not implemented.");
        conn.Open();
        SqlCommand cmd4 = new SqlCommand("sremp", conn);
        cmd4.CommandType = CommandType.StoredProcedure;
        cmd4.Parameters.AddWithValue("@empid", emp.empid);
        cmd4.Parameters.AddWithValue("@type", 'd');
        return cmd4.ExecuteNonQuery();
        conn.Close();
    }
}

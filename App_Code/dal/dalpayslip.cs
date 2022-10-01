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
/// Summary description for payslip
/// </summary>
public class dalpayslip
{
	public dalpayslip()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    internal int payinsert(blpayslip blpayslip)
    {
        //throw new Exception("The method or operation is not implemented.");
        con.Open();
        SqlCommand cmd = new SqlCommand("sp_payslip", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@empid", blpayslip.empid);
        cmd.Parameters.AddWithValue("@empname", blpayslip.empname);
        cmd.Parameters.AddWithValue("@sal", blpayslip.salary);
        cmd.Parameters.AddWithValue("@advances", blpayslip.advances);
        cmd.Parameters.AddWithValue("@incentives", blpayslip.incentives);
        cmd.Parameters.AddWithValue("@netsal", blpayslip.netsal);
        cmd.Parameters.AddWithValue("@dateofsal", blpayslip.dosal);
        cmd.Parameters.AddWithValue("@type", 'i');
     
        return cmd.ExecuteNonQuery();
        con.Close();


    }

    internal DataSet check(blpayslip blpayslip)
    {
        //throw new Exception("The method or operation is not implemented.");
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("sp_payslip", con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@empid", blpayslip.empid);
        da.SelectCommand.Parameters.AddWithValue("@type", 's');
        DataSet ds2 = new DataSet();
        da.Fill(ds2);
        return (ds2);

    }

    internal DataSet getsal(blpayslip blpayslip)
    {
        //throw new Exception("The method or operation is not implemented.");
        con.Open();
        SqlDataAdapter da2 = new SqlDataAdapter("sp_payslip", con);
        da2.SelectCommand.CommandType = CommandType.StoredProcedure;
        //da2.SelectCommand.Parameters.AddWithValue("@empid", blpayslip.empid);
        da2.SelectCommand.Parameters.AddWithValue("@type", 'a');
        DataSet ds=new DataSet();
        da2.Fill(ds);
        return (ds);
        
    }
}

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
/// Summary description for dalbook1
/// </summary>
public class dalbook1
{
	public dalbook1()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    internal int inserted(blbookdtl blbookdtl)
    {
        //throw new Exception("The method or operation is not implemented.");
        conn.Open();
        SqlCommand cmd = new SqlCommand("sp_book", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@pno", blbookdtl.pno);
        cmd.Parameters.AddWithValue("@bdate", blbookdtl.bdate);
        cmd.Parameters.AddWithValue("@btime", blbookdtl.btime);
        cmd.Parameters.AddWithValue("@bookedby", blbookdtl.bookedby);
        cmd.Parameters.AddWithValue("@name", blbookdtl.name);
        cmd.Parameters.AddWithValue("@state", blbookdtl.state);
        cmd.Parameters.AddWithValue("@city", blbookdtl.city);
        cmd.Parameters.AddWithValue("@area", blbookdtl.area);
        cmd.Parameters.AddWithValue("@fname", blbookdtl.sourcename);
        cmd.Parameters.AddWithValue("@faddress", blbookdtl.sourceaddress);
        cmd.Parameters.AddWithValue("@fphno", blbookdtl.sourcephno);
        cmd.Parameters.AddWithValue("@source", blbookdtl.source);
        cmd.Parameters.AddWithValue("@destination", blbookdtl.destination);
        cmd.Parameters.AddWithValue("@weight", blbookdtl.weight);
        cmd.Parameters.AddWithValue("@amount", blbookdtl.amount);
        cmd.Parameters.AddWithValue("@dname",blbookdtl.dname);
        cmd.Parameters.AddWithValue("@daddress", blbookdtl.daddress);
        cmd.Parameters.AddWithValue("@dphno", blbookdtl.dphno);
        cmd.Parameters.AddWithValue("@type",'i' );
        return cmd.ExecuteNonQuery();

        
    }

    internal DataSet show(blbookdtl blbookdtl)
    {
        //throw new Exception("The method or operation is not implemented.");
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter("sp_book", conn);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@pno", blbookdtl.pno);
        da.SelectCommand.Parameters.AddWithValue("@type", 's');
        DataSet ds = new DataSet();
        da.Fill(ds);
        return (ds);

    }

    internal int updat(blbookdtl blbookdtl)
    {
        //throw new Exception("The method or operation is not implemented.");
        conn.Open();
        SqlCommand cmd = new SqlCommand("sp_book", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@pno", blbookdtl.pno);
        cmd.Parameters.AddWithValue("@bdate", blbookdtl.bdate);
        cmd.Parameters.AddWithValue("@btime", blbookdtl.btime);
        cmd.Parameters.AddWithValue("@bookedby", blbookdtl.bookedby);
        cmd.Parameters.AddWithValue("@name", blbookdtl.name);
        cmd.Parameters.AddWithValue("@state", blbookdtl.state);
        cmd.Parameters.AddWithValue("@city", blbookdtl.city);
        cmd.Parameters.AddWithValue("@area", blbookdtl.area);
        cmd.Parameters.AddWithValue("@fname", blbookdtl.sourcename);
        cmd.Parameters.AddWithValue("@faddress", blbookdtl.sourceaddress);
        cmd.Parameters.AddWithValue("@fphno", blbookdtl.sourcephno);
        cmd.Parameters.AddWithValue("@source", blbookdtl.source);
        cmd.Parameters.AddWithValue("@destination", blbookdtl.destination);
        cmd.Parameters.AddWithValue("@weight", blbookdtl.weight);
        cmd.Parameters.AddWithValue("@amount", blbookdtl.amount);
        cmd.Parameters.AddWithValue("@dname", blbookdtl.dname);
        cmd.Parameters.AddWithValue("@daddress", blbookdtl.daddress);
        cmd.Parameters.AddWithValue("@dphno", blbookdtl.dphno);
        cmd.Parameters.AddWithValue("@type", 'i');
        return cmd.ExecuteNonQuery();
    }
}

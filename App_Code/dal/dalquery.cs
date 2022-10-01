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
/// Summary description for dalquery
/// </summary>
public class dalquery
{
	public dalquery()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    internal int insert(Querybl querybl)
    {
        //throw new Exception("The method or operation is not implemented.");
        con1.Open();
        SqlCommand cmd = new SqlCommand("sp_query", con1);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@customerid", querybl.customerid);
        cmd.Parameters.AddWithValue("@name", querybl.customername);
        cmd.Parameters.AddWithValue("@qtime", querybl.qtime);
        cmd.Parameters.AddWithValue("@qdate", querybl.qdate);
        cmd.Parameters.AddWithValue("@query", querybl.Query);
        cmd.Parameters.AddWithValue("@type", 'i');
        return cmd.ExecuteNonQuery();
        con1.Close(); 


    }
}

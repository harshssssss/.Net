using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for Querybl
/// </summary>
public class Querybl
{
	public Querybl()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string _customerid;

    public string customerid
    {
        get { return _customerid; }
        set { _customerid = value; }
    }
	private string  _customername;

	public string customername
	{
		get { return _customername;}
		set { _customername = value;}
	}
	private string  _qdate;

	public string  qdate
	{
		get { return _qdate;}
		set { _qdate = value;}
	}
    private string _qtime;

	public string qtime
	{
		get { return _qtime;}
		set { _qtime = value;}
	}
	private string _Query;

	public string Query
	{
		get { return _Query;;}
		set { _Query = value;}
	}



    public int insert()
    {
        //throw new Exception("The method or operation is not implemented.");
        dalquery obj1 = new dalquery();
        return obj1.insert(this);

    }
}

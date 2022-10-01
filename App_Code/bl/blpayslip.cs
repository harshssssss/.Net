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
/// Summary description for payslip
/// </summary>
public class blpayslip
{
	public blpayslip()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string _empid;

    public string empid
    {
        get { return _empid; }
        set { _empid = value; }
    }
    private string  _empname;

    public string  empname
    {
        get { return _empname; }
        set { _empname = value; }
    }
    private String  _salary;

    public string   salary
    {
        get { return _salary; }
        set { _salary = value; }

    }
    private string _advances;

    public string advances
    {
        get { return _advances; }
        set { _advances = value; }
    }

    private string _incentives;

    public string incentives
    {
        get { return _incentives; }
        set { _incentives = value; }
    }
    private string  _netsal;

    public string netsal
    {
        get { return _netsal; }
        set { _netsal = value; }
    }
    private string  _dosal;

    public string  dosal
    {
        get { return _dosal; }
        set { _dosal = value; }
    }


    public int payinsert()
    {
        //throw new Exception("The method or operation is not implemented.");
        dalpayslip obj1 = new dalpayslip();
       return obj1.payinsert(this);
    }

    public DataSet check()
    {
        //throw new Exception("The method or operation is not implemented.");
        dalpayslip obj2 = new dalpayslip();
       return  obj2.check(this);
    }

    public DataSet getsal()
    {
        //throw new Exception("The method or operation is not implemented.");
        dalpayslip obj2 = new dalpayslip();
        return obj2.getsal(this);
    }
}

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
/// Summary description for customer
/// </summary>
public class customer
{
	public customer()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string  _customerid;

    public string  customerid
    {
        get { return _customerid; }
        set { _customerid = value; }
    }
    private string  _customername;

    public string  customername
    {
        get { return _customername; }
        set { _customername = value; }
    }

    private string  _cpassword;

    public string  cpassword
    {
        get { return _cpassword; }
        set { _cpassword = value; }
    }
    private string _cdob;

    public string cdob
    {
        get { return _cdob; }
        set { _cdob = value; }
    }

    private string _cgender;

    public string cgender
    {
        get { return _cgender; }
        set { _cgender = value; }
    }
    private string  _caddress;

    public string  caddress
    {
        get { return _caddress; }
        set { _caddress = value; }
    }
    private string  _cemail;

    public string  cemail
    {
        get { return _cemail; }
        set { _cemail = value; }
    }
    private string  _cphno;

    public string  cphno
    {
        get { return _cphno; }
        set { _cphno = value; }
    }



    public int insert()
    {
        //throw new Exception("The method or operation is not implemented.");
        dalcustomer obj1 = new dalcustomer();
        return obj1.insert(this);
    }

    public DataSet getid()
    {
        //throw new Exception("The method or operation is not implemented.");
        dalcustomer obj1 = new dalcustomer();
      return  obj1.getid(this);
    }

    public DataSet view()
    {
        //throw new Exception("The method or operation is not implemented.");
        dalcustomer obj2 = new dalcustomer();
       return obj2.view(this);
    }
}

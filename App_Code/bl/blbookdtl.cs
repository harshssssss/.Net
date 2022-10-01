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
/// Summary description for blbookdtl
/// </summary>
public class blbookdtl
{
	public blbookdtl()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private int _pno;

    public int pno
    {
        get { return _pno; }
        set { _pno = value; }
    }
    private string  _bdate;

    public string  bdate
    {
        get { return _bdate; }
        set { _bdate = value; }
    }
    private string _btime;

    public string btime
    {
        get { return _btime; }
        set { _btime = value; }
    }
    private string  _bookedby;

    public string  bookedby
    {
        get { return _bookedby; }
        set { _bookedby = value; }
    }
    private string  _name;

    public string  name
    {
        get { return _name; }
        set { _name = value; }
    }
    private string  _state;

    public string  state
    {
        get { return _state; }
        set { _state = value; }
    }
    private string  _area;

    public string  area
    {
        get { return _area; }
        set { _area = value; }
    }
    private string  _sourcename;

    public string  sourcename
    {
        get { return _sourcename; }
        set { _sourcename = value; }
    }
    private string  _sourceaddress;

    public string sourceaddress
    {
        get { return _sourceaddress; }
        set { _sourceaddress = value; }
    }
    private string  _sourcephno;

    public string  sourcephno
    {
        get { return _sourcephno; }
        set { _sourcephno = value; }
    }
    private string _source;

    public string source
    {
        get { return _source; }
        set { _source = value; }
    }
    private string  _dname;

    public string  dname
    {
        get { return _dname; }
        set { _dname = value; }
    }
    private string  _darress;

    public string  daddress
    {
        get { return _darress; }
        set { _darress = value; }
    }
    private string _dphno;

    public string dphno
    {
        get { return _dphno; }
        set { _dphno = value; }
    }
    private string  _destination;

    public string  destination
    {
        get { return _destination; }
        set { _destination = value; }
    }
	
    private int _weight;

    public int weight
    {
        get { return _weight; }
        set { _weight = value; }
    }
    private int _amount;

    public int amount    {
        get { return _amount; }
        set { _amount = value; }
    }
    private string  _city;

    public string  city
    {
        get { return _city; }
        set { _city = value; }
    }
	

    public int inserted()
    {
        //throw new Exception("The method or operation is not implemented.");
        dalbook1 obj1 = new dalbook1();
        return obj1.inserted(this);
    }

    public DataSet show()
    {
        //throw new Exception("The method or operation is not implemented.");
        dalbook1 obj1 = new dalbook1();
        return obj1.show(this);
    }

    public int updat()
    {
        //throw new Exception("The method or operation is not implemented.");
        dalbook1 obj2 = new dalbook1();
        return obj2.updat(this);
    }
}

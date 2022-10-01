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
/// Summary description for emp
/// </summary>
public class emp
{
	public emp()
	{
		
    }
    private String _empid;

    public string empid
    {
        get { return _empid; }
        set { _empid = value; }
    }
	
	

	private string _ename;
    public string ename 
	{
		get { return _ename;}
		set { _ename = value;}
	}
    private string _epassword;

	public string epassword
	{
		get { return _epassword;}
		set { _epassword = value;}
	}

	
	private string  _dob;

	public string  dob
	{
		get { return _dob;}
		set { _dob = value;}
	}
	private string  _gen;

	public string  gen
	{
		get { return _gen;}
		set { _gen = value;}
	}
	private string _address;

	public string address
	{
		get { return _address;}
		set { _address = value;}
	}
	private string  _emailid;

	public string  emailid
	{
		get { return _emailid;}
		set { _emailid = value;}
	}
	private string  _phno;

	public string  phno
	{
		get { return _phno;}
		set { _phno = value;}
	}
	

        
	
public int blinsert()
{
    //throw new Exception("The method or operation is not implemented.");
    empdal obj1=new empdal();
   return obj1.insetdal(this);
}

public DataSet bleid()
{
    //throw new Exception("The method or operation is not implemented.");
    empdal obj2 = new empdal();
    return obj2.daleid(this);
}

public DataSet empview()
{
    //throw new Exception("The method or operation is not implemented.");
    empdal obj3 = new empdal();
    return obj3.viewemp(this);
}







public int empupdt()
{
    //throw new Exception("The method or operation is not implemented.");
    empdal obj4 = new empdal();
    return obj4.dalupdat(this);
}

public DataSet viewal()
{
    //throw new Exception("The method or operation is not implemented.");
    empdal obj5 = new empdal();
    return obj5.viewal(this);
}

public int empdel()
{
    //throw new Exception("The method or operation is not implemented.");
    empdal obj4 = new empdal();
    return obj4.empdel(this);
   
}
}


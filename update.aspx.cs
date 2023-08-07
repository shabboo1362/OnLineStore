//===========================================================================
// This file was modified as part of an ASP.NET 2.0 Web project conversion.
// The class name was changed and the class modified to inherit from the abstract base class 
// in file 'App_Code\Migrated\Stub_update_aspx_cs.cs'.
// During runtime, this allows other classes in your web application to bind and access 
// the code-behind page using the abstract base class.
// The associated content page 'update.aspx' was also modified to refer to the new class name.
// For more information on this code pattern, please refer to http://go.microsoft.com/fwlink/?LinkId=46995 
//===========================================================================
using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlTypes;
using System.Data.SqlClient;

namespace OnLineStore
{
	/// <summary>
	/// Summary description for update.
	/// </summary>
	public partial class Migrated_update : update
	{
		private codebehind ob= new codebehind();
		string password="";
		private SqlDataReader datareader;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!Page.IsPostBack)
			{
				if(Session["loginid"]!=null)
				{
					try
					{
					
						datareader=ob.get_UserInfo("*","Customer","LoginID='"+Page.Session["loginid"]+"'");
						while(datareader.Read())
						{
							nametxt.Text=datareader.GetValue(1).ToString();
							lastnametxt.Text=datareader.GetValue(2).ToString();
							addresstxt.Text=datareader.GetValue(3).ToString();
							teltxt.Text=datareader.GetValue(4).ToString();
							emailtxt.Text=datareader.GetValue(5).ToString();
							citytxt.Text=datareader.GetValue(6).ToString();
							statetxt.Text=datareader.GetValue(7).ToString();
							postalcodetxt.Text=datareader.GetValue(8).ToString();
						
						}
					}
					catch(System.Exception connection)
					{
						Response.Redirect("error.aspx?connectionerror="+connection.Message);
					}
					finally
					{
						datareader.Close();
					}
					try
					{
						datareader=ob.get_UserInfo("UserName","Login","LoginID='"+Page.Session["loginid"]+"'");
						while(datareader.Read())
						{
							usernametxt.Text=datareader.GetValue(0).ToString();
						}
					}
					catch(System.Exception connection)
					{
						Response.Redirect("error.aspx?connectionerror="+connection.Message);
					}
					finally
					{
						datareader.Close();
					}
				}
			}
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion

		protected void submitcmd_Click(object sender, System.EventArgs e)
		{
			if(ob.get_ID("LoginID","Login","UserName='"+usernametxt.Text+"' AND LoginID!='"+int.Parse(Page.Session["loginid"].ToString())+"'")==0)
			{
				string ceriteria="LoginID='"+int.Parse(Page.Session["loginid"].ToString())+"'";
				try
				{
					datareader=ob.get_UserInfo("Password","Login",ceriteria);
					while(datareader.Read())
						password=datareader.GetValue(0).ToString();
				}
				catch(System.Exception connection)
				{
					Response.Redirect("error.aspx?connectionerror="+connection.Message);
				}
				finally
				{
					datareader.Close();
				}
				string loginfield="UserName,Password";
				string field="FirstName='"+nametxt.Text+"',LastName='"+lastnametxt.Text+"',Address='"+addresstxt.Text+"',Tel='"+teltxt.Text+"',Email='"+emailtxt.Text+"',City='"+citytxt.Text+"',State='"+statetxt.Text+"',PostalCode='"+postalcodetxt.Text+"'";
				if(!oldpasstxt.Text.Equals(""))
				{
					if(oldpasstxt.Text.Equals(password))
					{
						if(!passwordtxt.Text.Equals(""))
						{
							if(ValidationSummary1.Page.IsValid)
							{
								ob.update("Customer",field,ceriteria);
								loginfield="UserName='"+usernametxt.Text+"',Password='"+passwordtxt.Text+"'";
								ob.update("Login",loginfield,ceriteria);
							}
						}
						else
						{
							ob.update("Customer",field,ceriteria);
							loginfield="UserName='"+usernametxt.Text+"',Password='"+password+"'";
							ob.update("Login",loginfield,ceriteria);
							
						}

					}
					else
					{
						error.Visible=true;return;
					}
				}
				else
				{
					ob.update("Customer",field,ceriteria);
					loginfield="UserName='"+usernametxt.Text+"',Password='"+password+"'";
					ob.update("Login",loginfield,ceriteria);
				
				}
			}
			Response.Redirect("welcome.aspx");
			}

		protected void cancelcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("welcome.aspx");
		}
		protected void signoutlink_Click(object sender, System.EventArgs e)
		{
			Session.Abandon();
			Response.Redirect("index.aspx");
		}
	}
}

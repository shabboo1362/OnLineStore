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

namespace OnLineStore
{
	/// <summary>
	/// Summary description for register.
	/// </summary>
	public partial class register : System.Web.UI.Page
	{
		private codebehind ob=new codebehind();

	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
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
			
			if(ValidationSummary1.Page.IsValid)
			{	
				int loginid=0;
				if(ob.get_ID("LoginID","Login","UserName='"+usernametxt.Text+"' AND LoginID!=0")==0)
				{
					loginid=ob.insert("Login","UserName,Password,Accessuser","'"+usernametxt.Text+"','"+passwordtxt.Text+"',1");
					ob.insert("Customer","FirstName,LastName,Address,Tel,Email,City,State,PostalCode,LoginID","'"+nametxt.Text+"','"+lastnametxt.Text+"','"+addresstxt.Text+"','"+teltxt.Text+"','"+emailtxt.Text+"','"+citytxt.Text+"','"+statetxt.Text+"','"+postalcodetxt.Text+"','"+loginid+"'");
					Session["loginid"]=loginid;
					Response.Redirect("welcome.aspx");
				}
				else
					usererror.Visible=true;
			}
		}

		protected void cancelcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("index.aspx");
		}

	}
}

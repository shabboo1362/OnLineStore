namespace OnLineStore.usercontrol
{
	using System;
	using System.Collections;
	using System.ComponentModel;
	using System.Data;
	using System.Configuration;
	using System.Drawing;
	using System.Web;
	using System.Web.SessionState;
	using System.Web.UI;
	using System.Data.SqlClient;
	using System.Data.SqlTypes;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;

	/// <summary>
	///		Summary description for login.
	/// </summary>
	public partial class login : System.Web.UI.UserControl
	{
		protected System.Web.UI.WebControls.RequiredFieldValidator RequiredFieldValidator2;
		protected System.Web.UI.WebControls.ImageButton ImageButton1;
		private   SqlDataReader datareader;
		private   codebehind ID=new codebehind();

		protected void Page_Load(object sender, System.EventArgs e)
		{
//			if(IsPostBack)Label2.Visible=false;
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
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.logincmd.Click += new System.Web.UI.ImageClickEventHandler(this.logincmd_Click);

		}
		#endregion
		protected void passwordtxt_TextChanged(object sender, System.EventArgs e)
		{
			logincmd_Click(null,null);
		}

		private void logincmd_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			int accessuser=0;
			int id=ID.get_ID("LoginID","Login","UserName='"+usernametxt.Text+"' AND Password='"+passwordtxt.Text+"'");
			if(id!=0)
			{	
				Session["loginid"]=id;
				accessuser=ID.get_accssuser("LoginID='"+id+"'");
				if(accessuser==3)
					Response.Redirect("admin/admin.aspx");
				else
				{
					Response.Redirect("welcome.aspx");
				}	
			}
			else
			{ 
		Label2.Text="Password Invalid";
		Label2.Visible=true;
			}	
		
		}

		protected void usernametxt_TextChanged(object sender, System.EventArgs e)
		{
			logincmd_Click(null,null);
		
		}

		
	}
}

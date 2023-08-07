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
	/// Summary description for forgotpassword.
	/// </summary>
	public partial class forgotpassword : System.Web.UI.Page
	{
		private System.Data.SqlClient.SqlConnection connection;
		protected System.Web.UI.WebControls.HyperLink joinhl;
		private codebehind ob=new codebehind();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			
			
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
			this.nextcmd.Click += new System.Web.UI.ImageClickEventHandler(this.nextcmd_Click);

		}
		#endregion
		private void nextcmd_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			string username=usernametxt.Text;
			Page.Session["username"]=usernametxt.Text;
			
			if(!username.Equals(""))
			{
				int c=ob.get_ID("LoginID","Login","UserName='"+usernametxt.Text+"'");
				if(c!=0)
					Response.Redirect("forgotpassword1.aspx");
				else 
					Label1.Visible=true;
			}
		
		}
	}
}

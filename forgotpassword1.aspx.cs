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
	/// Summary description for forgotpassword1.
	/// </summary>
	public partial class forgotpassword1 : System.Web.UI.Page
	{
		private codebehind ob=new codebehind();
		private codebehind person=new codebehind();
		private System.Data.SqlClient.SqlDataReader datareader;
	
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
			this.nextcmd.Click += new System.Web.UI.ImageClickEventHandler(this.nextcmd_Click);

		}
		#endregion

		
		protected void emailtxt_TextChanged(object sender, System.EventArgs e)
		{
			nextcmd_Click(null,null);
		}

		private void nextcmd_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			string email=emailtxt.Text;
			string password="";
			string emailread="";
			string username=Page.Session["username"].ToString();
			int loginid=0;
			loginid=ob.get_ID("LoginID","Login","UserName='"+username+"'");
			int accessuser=0;
			accessuser=ob.get_ID("Accessuser","Login","LoginID='"+loginid+"'");
			try
			{
				if(accessuser==1 )
					datareader=ob.get_UserInfo("Email","Customer","LoginID='"+loginid+"'");	
				
				if(datareader.Read())
					emailread= datareader.GetValue(0).ToString();
			}
			catch(System.Exception connection)
			{
				Response.Redirect("error.aspx?connectionerror="+connection.Message);
			}
			finally
			{
				datareader.Close();
			}
			if(!(emailread.Equals("")))
			{		
				if(email.Equals(emailread))
				{
					try
					{
						datareader=ob.get_UserInfo("Password","Login","UserName='"+username+"'");
						while(datareader.Read())
							password = datareader.GetValue(0).ToString();
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
						//person.sendMail("sitemail",emailread,"your password",password,"");
					}
					catch(System.Exception caught)
					{
						Response.Redirect("../error.aspx?mailerror="+caught.Message);
						
					}
					
					Response.Redirect("fogotpassword2.aspx");
				}
				else
				{	
					error.Visible=true;
				}
			}
			else
			{
				//Label3.Visible=true;
			}
		}
	}
}

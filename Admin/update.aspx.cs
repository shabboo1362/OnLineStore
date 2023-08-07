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
using System.Data.SqlClient;

namespace OnLineStore.Admin
{
	/// <summary>
	/// Summary description for update.
	/// </summary>
	public partial class update : System.Web.UI.Page
	{
		private codebehind ob=new codebehind();
		private SqlDataReader datareader;
		private String password="";
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(Session["loginid"]==null)
				Response.Redirect("../error.aspx?pageerror="+"Deny Access");
			else
				if(ob.get_accssuser("LoginID='"+int.Parse(Session["loginid"].ToString())+"'")!=3)
				Response.Redirect("../error.aspx?pageerror="+"Deny Access");
			if(IsPostBack)
			{
				return;
			}
			try
			{
				datareader=ob.get_UserInfo("*","Administrator INNER JOIN LOGIN ON Administrator.LoginID=Login.LoginID","Login.LoginID='"+Page.Session["loginid"].ToString()+"'");
				while(datareader.Read())
				{
					firstnametxt.Text=datareader.GetValue(0).ToString();
					lastnametxt.Text=datareader.GetValue(1).ToString();
					usernametxt.Text=datareader.GetValue(5).ToString();
					password=datareader.GetValue(6).ToString();
				}		}
			catch(System.Exception connection)
			{
				Response.Redirect("../error.aspx?connectionerror="+connection.Message);
			}
			finally
			{
				datareader.Close();
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

		
		protected void cancelcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("admin.aspx");
		}

		protected void updatecmd_Click(object sender, System.EventArgs e)
		{
			if(ValidationSummary1.Page.IsValid)
			{
				if(ob.get_ID("LoginID","Login","UserName='"+usernametxt.Text+"' AND LoginID!='"+int.Parse(Page.Session["loginid"].ToString())+"'")==0)
				{
					string ceriteria="LoginID='"+int.Parse(Session["loginid"].ToString())+"'";
					string field="FirstName='"+firstnametxt.Text+"',LastName='"+lastnametxt.Text+"'"; 
					string loginfield="";
					try
					{
						datareader=ob.get_UserInfo("Password","Login",ceriteria);
						while(datareader.Read())
							password=datareader.GetValue(0).ToString();
					}
					catch(System.Exception connection)
					{
						Response.Redirect("../error.aspx?connectionerror="+connection.Message);
					}
					finally
					{
						datareader.Close();
					}
					if(!oldpasswordtxt.Text.Equals(""))
					{
						if(oldpasswordtxt.Text.Equals(password))
						{
							if(!newpasswordtxt.Text.Equals(""))
							{
								ob.update("Administrator",field,ceriteria);
								loginfield="UserName='"+usernametxt.Text+"',Password='"+newpasswordtxt.Text+"'";
								ob.update("Login",loginfield,ceriteria);
								Response.Redirect("administrator.aspx");
							}
							else
							{
								ob.update("Administrator",field,ceriteria);
								loginfield="UserName='"+usernametxt.Text+"',Password='"+password+"'";
								ob.update("Login",loginfield,ceriteria);
								Response.Redirect("administrator.aspx");
							}

						}
						else
						{
							error.Visible=true;
						}
					}
					else
					{
						ob.update("Administrator",field,ceriteria);
						loginfield="UserName='"+usernametxt.Text+"',Password='"+password+"'";
						ob.update("Login",loginfield,ceriteria);
						Response.Redirect("administrator.aspx");
					}
				}
				else
				{
					usernameerror.Visible=true;
					return;
				}
			}
		}

		private void signoutlink_Click(object sender, System.EventArgs e)
		{
			Session.Abandon();
			Response.Redirect("../index.aspx");
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("update.aspx");
		}

		protected void addproductcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("addproduct.aspx");
		}

		protected void homecmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("admin.aspx");
		}

		protected void requestcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("factors.aspx");
		}

		protected void productcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("Product.aspx");
		}
	}
}

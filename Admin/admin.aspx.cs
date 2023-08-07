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
	/// Summary description for admin.
	/// </summary>
	public partial class admin : System.Web.UI.Page
	{
		private codebehind ob=new codebehind();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(Session["loginid"]==null)
				Response.Redirect("../error.aspx?pageerror="+"Deny Access");
			else
				if(ob.get_accssuser("LoginID='"+int.Parse(Session["loginid"].ToString())+"'")!=3)
				Response.Redirect("../error.aspx?pageerror="+"Deny Access");
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

		protected void customerlink_Click(object sender, System.EventArgs e)
		{
			if(yeartxt.Text!="")
			{
				Session["year"]=yeartxt.Text;
				Session["mounth"]=monthddl.SelectedValue;
				Session["day"]=dayddl.SelectedValue;
				Response.Redirect("report.aspx");
			
			}
			else
				errorlbl.Visible=true;
		}

		protected void sellproductlink_Click(object sender, System.EventArgs e)
		{
			if(syeartxt.Text!="")
			{
				Session["year"]=syeartxt.Text;
				Session["mounth"]=smonthddl.SelectedValue;
				Session["day"]=sdayddl.SelectedValue;
				Response.Redirect("product.aspx");
			
			}
			else
				errorlbl.Visible=true;
		
		}

		protected void sigmoutlink_Click(object sender, System.EventArgs e)
		{
			Session.Abandon();
			Response.Redirect("../index.aspx");
		}

		protected void updatecmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("update.aspx");
		}

		protected void addproductcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("addproduct.aspx");
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

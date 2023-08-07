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

namespace OnLineStore.Admin
{
	/// <summary>
	/// Summary description for search.
	/// </summary>
	public partial class search : System.Web.UI.Page
	{
		private codebehind ob=new codebehind();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(Page.Session["searchddl"]!=null && Page.Session["searchtxt"]!=null)
			{
				DataSet dataset=new DataSet();
				ob.get_Info("*","Product","ProductName='"+Page.Session["searchtxt"].ToString()+"' AND CategoryID='"+int.Parse(Page.Session["searchddl"].ToString())+"'",dataset);
				d1.DataSource=dataset;
				d1.DataBind();
						
			}
		}
		private void signoutlink_Click(object sender, System.EventArgs e)
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

		protected void Requestcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("admin.aspx");Response.Redirect("admin.aspx");
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("factors.aspx");
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

		protected void productcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("Product.aspx");
		}
	}
}

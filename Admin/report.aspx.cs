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
	/// Summary description for report.
	/// </summary>
	public partial class report : System.Web.UI.Page
	{
		private codebehind ob=new codebehind();
		private DataSet dataset=new DataSet();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(Session["loginid"]==null)
				Response.Redirect("../error.aspx?pageerror="+"Deny Access");
			else
				if(ob.get_accssuser("LoginID='"+int.Parse(Session["loginid"].ToString())+"'")!=3)
				Response.Redirect("../error.aspx?pageerror="+"Deny Access");
			if(Session["year"]!=null)
			{
					System.DateTime date=new DateTime(int.Parse(Session["year"].ToString()),int.Parse(Session["mounth"].ToString()),int.Parse(Session["day"].ToString()));
					ob.get_alluser(dataset,date);
					d1.DataSource=dataset;
					d1.DataBind();
				
				}
			else
				Response.Redirect("");
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

		protected void signoutlink_Click(object sender, System.EventArgs e)
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
			Response.Redirect("admin.aspx");
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("factors.aspx");
		}

		protected void productcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("Product.aspx");
		}

	}
}

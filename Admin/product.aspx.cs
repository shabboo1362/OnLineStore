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
	/// Summary description for product.
	/// </summary>
	public partial class product : System.Web.UI.Page
	{
		private DataSet dataset=new DataSet();
		private codebehind ob =new codebehind();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			
			if(Session["year"]!=null)
			{
				System.DateTime date=new DateTime(int.Parse(Session["year"].ToString()),int.Parse(Session["mounth"].ToString()),int.Parse(Session["day"].ToString()));
				ob.get_Info("*","Product","dateadded>'"+date+"'",dataset);
			}
			else
				ob.get_Info("*","Product","ProductID IS NOT NULL",dataset);
			d1.DataSource=dataset;
			d1.DataBind();
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

		protected void d1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			if(Session["year"]!=null)
			{
				System.DateTime date=new DateTime(int.Parse(Session["year"].ToString()),int.Parse(Session["mounth"].ToString()),int.Parse(Session["day"].ToString()));
				ob.get_Info("*","Product","dateadded>'"+date+"'",dataset);
			}
			else
				ob.get_Info("*","Product","ProductID IS NOT NULL",dataset);
			d1.DataSource=dataset;
			d1.DataBind();
		}
	}
}

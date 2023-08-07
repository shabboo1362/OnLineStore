using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlTypes;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace OnLineStore.Admin
{
	/// <summary>
	/// Summary description for factors.
	/// </summary>
	public partial class factors : System.Web.UI.Page
	{
		private codebehind ob =new codebehind();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			DataSet dataset=new DataSet();
			ob.get_Info("distinct FactorID,FirstName,LastName","Factor INNER JOIN Customer on Factor.CustomerID=Customer.CustomerID","Verify=0",dataset);
			DataGrid1.DataSource=dataset;
			DataGrid1.DataBind();
			
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

		protected void productcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("Product.aspx");
		}
	}
}

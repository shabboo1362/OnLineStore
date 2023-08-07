namespace OnLineStore.Admin.uc
{
	using System;
	using System.Data;
	using System.Data.SqlTypes;
	using System.Data.SqlClient;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;

	/// <summary>
	///		Summary description for mostvisited.
	/// </summary>
	public partial class mostvisited : System.Web.UI.UserControl
	{
		private System.Data.DataSet dataset;
		private System.Data.SqlClient.SqlConnection connection;
		private codebehind ob=new codebehind();
		

		protected void Page_Load(object sender, System.EventArgs e)
		{
			dataset=new DataSet();
			ob.get_Info("TOP 3 ProductName,ProductID","Product","ProductID IS NOT NULL ORDER BY Viewd DESC",dataset);
			d1.DataSource=dataset;
			d1.DataBind();
			d1.PageIndexChanged+=new DataGridPageChangedEventHandler(d1_PageIndexChanged);
	         	
		}
		private void d1_PageIndexChanged(object source, 
			System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			d1.CurrentPageIndex = e.NewPageIndex;
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
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{

		}
		#endregion
	}
}

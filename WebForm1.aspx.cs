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
	/// Summary description for WebForm1.
	/// </summary>
	public partial class WebForm1 : System.Web.UI.Page
	{
		private DataSet dataset1=new DataSet();
		private Table table1=new Table();
		private codebehind ob= new codebehind();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			
			DataSet dataset=new DataSet();
			ob.get_Info("*","Product","ProductID is Not null",dataset);
			DataGrid1.DataSource=dataset;
			DataGrid1.DataBind();
			dataset1.Tables.Add("table");
			Table table1=new Table();
			
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

		protected void DataGrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		
		}

		
	}
}

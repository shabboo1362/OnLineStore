using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Configuration;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace OnLineStore
{
	/// <summary>
	/// Summary description for WebForm1.
	/// </summary>
	public partial class index : System.Web.UI.Page
	{
		private System.Data.DataSet dataset;
		private System.Data.SqlClient.SqlConnection connection;
		private  codebehind ob=new codebehind();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			dataset=new DataSet();
			ob.get_Info("CategoryName,CategoryID","Category","HeadID IS NULL ",dataset);
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
	}
}

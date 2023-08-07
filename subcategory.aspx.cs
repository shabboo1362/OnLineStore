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
	public partial class subcategory : System.Web.UI.Page
	{
		private System.Data.SqlClient.SqlConnection connection;
		private System.Data.DataSet dataset;
		private System.Data.SqlClient.SqlDataReader datareader;
		protected System.Web.UI.WebControls.DataGrid DataGrid1;
		private codebehind ob=new codebehind();
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!IsPostBack)
			{
				if(Session["loginid"]!=null)
				{
					signout.Visible=true;
					homelink.Visible=true;
					home.Visible=false;
					joinnow.Visible=false;
				}
			}
		   if(Page.Request["CategoryID"]!=null )
			{
				dataset=new DataSet();
				int headid = int.Parse(Page.Request["CategoryID"].ToString());
				ob.get_Info("CategoryName,CategoryID","Category","HeadID='"+headid+"'",dataset);

				d1.DataSource=dataset;
				d1.DataBind();
			}
			//else  Response.Redirect("");
			
		}
		private void DataGrid1_PageIndexChanged(object source, 
			System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			dataset=new DataSet();
			int headid = int.Parse(Page.Request["CategoryID"].ToString());
			ob.get_Info("CategoryName,CategoryID","Category","HeadID='"+headid+"'",dataset);
			DataGrid1.DataSource=dataset;	
			DataGrid1.CurrentPageIndex = e.NewPageIndex;
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

		

		protected void signout_Click(object sender, System.EventArgs e)
		{
			Session.Abandon();
			Response.Redirect("index.aspx");
		}

	}
}

namespace OnLineStore.Admin.uc
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;

	/// <summary>
	///		Summary description for search.
	/// </summary>
	public partial  class search : System.Web.UI.UserControl
	{
		private DataSet dataset=new DataSet();
		private codebehind ob=new codebehind(); 

		protected void Page_Load(object sender, System.EventArgs e)
		{
			
			dataset=new DataSet();
			ob.fillsearchddl("CategoryName,CategoryID","Category","HeadID",dataset);
			searchddl.DataSource=dataset;
			searchddl.DataMember=dataset.Tables[0].TableName;
			searchddl.DataTextField="CategoryName";
			searchddl.DataValueField="CategoryID";
			searchddl.DataBind();
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
		
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{

		}
		#endregion


		private void searchtxt_TextChanged(object sender, System.EventArgs e)
		{
			searchcmd_Click(null,null);
		}

		protected void searchcmd_Click(object sender, System.EventArgs e)
		{
			Session["searchtxt"]=searchtxt.Text;
			Session["searchddl"]=searchddl.SelectedValue;
			Response.Redirect("search.aspx");
		}

		

		
	}
}

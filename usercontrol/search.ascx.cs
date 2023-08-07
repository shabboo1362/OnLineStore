//===========================================================================
// This file was modified as part of an ASP.NET 2.0 Web project conversion.
// The class name was changed and the class modified to inherit from the abstract base class 
// in file 'App_Code\Migrated\usercontrol\Stub_search_ascx_cs.cs'.
// During runtime, this allows other classes in your web application to bind and access 
// the code-behind page using the abstract base class.
// The associated content page 'usercontrol\search.ascx' was also modified to refer to the new class name.
// For more information on this code pattern, please refer to http://go.microsoft.com/fwlink/?LinkId=46995 
//===========================================================================
namespace OnLineStore.usercontrol
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
	public partial class Migrated_search : search
	{
		protected System.Web.UI.WebControls.Label searchlbl;
		codebehind ob=new codebehind();
		private System.Data.DataSet dataset;
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
		
		/// <summary>
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{

		}
		#endregion


		protected void searchcmd_Click(object sender, System.EventArgs e)
		{
			Session["searchtxt"]=searchtxt.Text;
			Session["searchddl"]=searchddl.SelectedValue;
			Response.Redirect("search.aspx");
		}

	}
}

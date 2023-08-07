using System;
using System.Data.SqlTypes;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace OnLineStore
{
	/// <summary>
	/// Summary description for welcome.
	/// </summary>
	public partial class welcome : System.Web.UI.Page
	{
		private codebehind ob=new codebehind();
		private DataSet dataset=new DataSet();
		private SqlDataReader datareader; 
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(Page.Session["loginid"]!=null)
			{
				int loginid=int.Parse(Session["loginid"].ToString());
				welcomelbl.Visible=true;
				try
				{
					datareader=ob.get_UserInfo("FirstName,LastName","Customer","LoginID='"+loginid+"'");
					while(datareader.Read())
					{
						welcomelbl.Text="welcome "+datareader.GetValue(0).ToString()+" "+datareader.GetValue(1).ToString();
					
					}
				}
				catch(System.Exception connection)
				{
					Response.Redirect("error.aspx?connectionerror="+connection.Message);
				}
				finally
				{
					datareader.Close();
				}
				dataset=new DataSet();
				ob.get_Info("CategoryName,CategoryID","Category","HeadID IS NULL ",dataset);
				d1.DataSource=dataset;
				d1.DataBind();
			}
			else
				Response.Redirect("index.aspx");
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
			this.d1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.d1_PageIndexChanged);

		}
		#endregion

		protected void signoutlink_Click(object sender, System.EventArgs e)
		{
			Session.Abandon();
			Response.Redirect("index.aspx");
		}

		private void d1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			dataset=new DataSet();
			ob.get_Info("CategoryName,CategoryID","Category","HeadID IS NULL ",dataset);
			d1.DataSource=dataset;
			d1.DataBind();
			d1.CurrentPageIndex = e.NewPageIndex;
			d1.DataBind();
		}
	}
}

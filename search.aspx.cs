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
	/// Summary description for search.
	/// </summary>
	public partial class search : System.Web.UI.Page
	{
		private System.Data.SqlClient.SqlDataReader datareader;
	    codebehind ob =new codebehind();
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!IsPostBack){
				if(Session["loginid"]!=null)
				{
					signout.Visible=true;
					welcome.Visible=true;
					int loginid=int.Parse(Session["loginid"].ToString());
					try
					{
						datareader=ob.get_UserInfo("FirstName,LastName","Customer","LoginID='"+loginid+"'");
						while(datareader.Read())
						{
							welcome.Text+=datareader.GetValue(0).ToString()+" "+datareader.GetValue(1).ToString();
					
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
				}
				}
			if(Page.Session["searchddl"]!=null && Page.Session["searchtxt"]!=null)
			{
				DataSet dataset=new DataSet();
				ob.get_Info("*","Product","ProductName='"+Page.Session["searchtxt"].ToString()+"' AND CategoryID='"+int.Parse(Page.Session["searchddl"].ToString())+"'",dataset);
				d1.DataSource=dataset;
				d1.DataBind();
				d1.PageIndexChanged+=new DataGridPageChangedEventHandler(d1_PageIndexChanged);
			
			}
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

		private void d1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
		
		}

		protected void signout_Click(object sender, System.EventArgs e)
		{
			Session.Abandon();
			Response.Redirect("index.aspx");
		}
	}
}

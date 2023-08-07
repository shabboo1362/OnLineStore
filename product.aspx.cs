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
	/// Summary description for product.
	/// </summary>
	public partial class product : System.Web.UI.Page
	{
		private codebehind ob = new codebehind();
		private DataSet dataset=new DataSet();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!Page.IsPostBack)
			{
					ob.get_Info("*","Product","CategoryID='"+Page.Request["CategoryID"].ToString()+"'",dataset);
				Session["catid"]=Page.Request["CategoryID"].ToString();
					d1.DataSource=dataset;
					d1.DataBind();
				if(Session["loginid"]==null)
				{
					welcomelink.Visible=false;
					signoutlink.Visible=false;
					cancelcmd.Visible=false;
					editcmd.Visible=false;
					signinlink.Visible=true;
					joinnowlink.Visible=true;
					indexlink.Visible=true;
                    Label1.Visible=true;					
					d1.Columns[6].Visible=false;
				}
				

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

		protected void cancelcmd_Click(object sender, System.EventArgs e)
		{
			if(Page.Session["basketid"]!=null)
			{
				ob.delete("Factor","FactorID='"+int.Parse(Page.Session["basketid"].ToString())+"'");
				Session.Remove("basketid");
			}
			Response.Redirect("welcome.aspx");
		}


		protected void editcmd_Click(object sender, System.EventArgs e)
		{
		Response.Redirect("basket.aspx");
		}

		private void d1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			ob.get_Info("*","Product","CategoryID='"+Page.Request["CategoryID"].ToString()+"'",dataset);
			Session["catid"]=Page.Request["CategoryID"].ToString();
			d1.DataSource=dataset;
			d1.DataBind();
			d1.CurrentPageIndex = e.NewPageIndex;
			d1.DataBind();
		}
	}
}

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
	/// Summary description for productdescription.
	/// </summary>
	public partial class productdescription : System.Web.UI.Page
	{
		private codebehind ob=new codebehind();
		protected System.Web.UI.WebControls.Label Label1;
		protected System.Web.UI.WebControls.LinkButton LinkButton1;
		protected System.Web.UI.WebControls.LinkButton LinkButton2;
		protected System.Web.UI.WebControls.Label Label4;
		private DataSet dataset;
		protected System.Web.UI.WebControls.LinkButton signoutlink;
		protected System.Web.UI.WebControls.ImageButton cancelcmd;
		protected System.Web.UI.WebControls.ImageButton requestcmd;
		private System.Data.SqlClient.SqlDataReader datareader;

		private void InitializeComponent()
		{

		}
	 
		protected void Page_Load(object sender, System.EventArgs e)
		{
			
			if(Page.Request["ProductID"]!=null ||Page.Request["productid"]!=null )
			{
				if(!Page.IsPostBack)
				{
			
					int productid=0;
					if(Page.Request["productid"]!=null)
						productid=int.Parse(Page.Request["productid"].ToString());
					else if(Page.Request["ProductID"]!=null)
						productid=int.Parse(Page.Request["ProductID"].ToString());
					dataset=new DataSet();
					ob.get_Info("ProductName,Image,Description,Model,Price,ProductID","Product","ProductID='"+productid+"'",dataset);
					d1.DataSource=dataset;
					d1.DataBind();
				}
			}
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
		
		#endregion

		protected void signout_Click(object sender, System.EventArgs e)
		{
				Session.Abandon();
			Response.Redirect("index.aspx");
		
		}

	}
}

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
using System.Data.SqlClient;
using System.Data.SqlTypes;

namespace OnLineStore
{
	/// <summary>
	/// Summary description for addtobasket.
	/// </summary>
	public partial class addtobasket : System.Web.UI.Page
	{
		private SqlDataReader datareader;
		private codebehind ob =new codebehind();
		protected void Page_Load(object sender, System.EventArgs e)
		{
			int bid=0;
			int id=0;
			int price=0;
			if(Session["basketid"]==null)
			{
				bid=ob.get_ID("Max(FactorID)","Factor","FactorID is not null");
				bid+=1;
				Session["basketid"]=bid.ToString();
			}
			if(Session["basketid"]!=null && Page.Request["ID"]!=null)
			{
				try
				{
					id=int.Parse(Page.Request["ID"].ToString());
					datareader=ob.get_UserInfo("Price","Product","ProductID='"+id+"'");
					while(datareader.Read())
					{
						price=int.Parse(datareader.GetValue(0).ToString());
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
				if(ob.get_ID("FactorID","Factor","ProductID='"+id+"' and FactorID='"+bid+"'")!=bid)
				{
					ob.insert1("Factor","ProductID,FactorID,CustomerID,Dateadded,quantity,Price","'"+int.Parse(Page.Request["ID"].ToString())+"','"+bid+"','"+int.Parse(Page.Session["loginid"].ToString())+"','"+System.DateTime.Today.Date+"',1,'"+price+"'");
					Response.Redirect("basket.aspx");
				}
				else
					Response.Redirect("basket.aspx");
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
		}
		#endregion
	}
}

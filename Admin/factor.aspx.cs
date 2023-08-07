using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace OnLineStore.Admin
{
	/// <summary>
	/// Summary description for factor.
	/// </summary>
	public partial class factor : System.Web.UI.Page
	{
		private codebehind ob= new codebehind();
		private SqlDataReader myreader;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(Page.Request["ID"]!=null)
			{
				DataSet dataset=new DataSet();
				ob.get_Info("Factor.quantity,Product.Price,ProductName","Product INNER JOIN Factor on Factor.ProductID=Product.ProductID","FactorID='"+int.Parse(Page.Request["ID"].ToString())+"'",dataset);
				DataGrid1.DataSource=dataset;
				DataGrid1.DataBind();
				totalprice.Text="Total price : "+ob.get_ID("sum(Price * quantity)","Factor","FactorID='"+int.Parse(Page.Request["ID"].ToString())+"'");
				try
				{
					myreader=ob.get_UserInfo("Distinct Address","Factor INNER JOIN Customer ON Factor.CustomerID=Customer.CustomerID","FactorID='"+int.Parse(Page.Request["ID"].ToString())+"'");
					while(myreader.Read())
						Address.Text="Address : "+ myreader.GetString(0).ToString();
				}
				catch(System.Exception connection)
				{
					Response.Redirect("error.aspx?connectionerror="+connection.Message);
				}
				finally
				{
					myreader.Close();
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

		}
		#endregion

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			string emailread="";
			ob.update("Factor","Verify=1","FactorID='"+int.Parse(Page.Request["ID"].ToString())+"'");
			try
			{
				myreader=ob.get_UserInfo("Distinct Email","Factor INNER JOIN Customer ON Factor.CustomerID=Customer.CustomerID","FactorID='"+int.Parse(Page.Request["ID"].ToString())+"'");
				while(myreader.Read())
					emailread= myreader.GetString(0).ToString();
			}
			catch(System.Exception connection)
			{
				Response.Redirect("error.aspx?connectionerror="+connection.Message);
			}
			finally
			{
				myreader.Close();
			}
			try
			{
				//ob.sendMail("sitemail",emailread,"response to your request","Your request verify","");
			}
			catch(System.Exception caught)
			{
				Response.Redirect("../error.aspx?mailerror="+caught.Message);
						
			}
			Response.Redirect("Factors.aspx");
		}

		protected void deletecmd_Click(object sender, System.EventArgs e)
		{
			string emailread="";
			ob.delete("Factor","FactorID='"+int.Parse(Page.Request["ID"].ToString())+"'");
			try
			{
				myreader=ob.get_UserInfo("Distinct Email","Factor INNER JOIN Customer ON Factor.CustomerID=Customer.CustomerID","FactorID='"+int.Parse(Page.Request["ID"].ToString())+"'");
				while(myreader.Read())
					emailread= myreader.GetString(0).ToString();
			}
			catch(System.Exception connection)
			{
				Response.Redirect("error.aspx?connectionerror="+connection.Message);
			}
			finally
			{
				myreader.Close();
			}
			try
			{
				//ob.sendMail("sitemail",emailread,"response to your request","Your request not verify","");
			}
			catch(System.Exception caught)
			{
				Response.Redirect("../error.aspx?mailerror="+caught.Message);
						
			}
			Response.Redirect("Factors.aspx");
		}

		protected void requestcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("factors.aspx");
		}

		protected void addproductcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("addproduct.aspx");
		}

		protected void homecmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("admin.aspx");
		}

		protected void updatecmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("update.aspx");
		}

		protected void productcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("Product.aspx");
		}
	}
}

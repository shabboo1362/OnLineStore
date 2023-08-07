using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace OnLineStore.Admin
{
	/// <summary>
	/// Summary description for updateproduct.
	/// </summary>
	public partial class updateproduct : System.Web.UI.Page
	{
		private codebehind ob=new codebehind();
		private SqlDataReader datareader;

	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!Page.IsPostBack)
			{
				if(Page.Request["ID"]!=null)
				{
					try
					{
					
						datareader=ob.get_UserInfo("*","Product","ProductID='"+int.Parse(Page.Request["ID"].ToString())+"'");
						while(datareader.Read())
						{
							productnametxt.Text=datareader.GetValue(2).ToString();
							descriptiontxt.Text=datareader.GetValue(3).ToString();
							quntitytxt.Text=datareader.GetValue(5).ToString();
							modeltxt.Text=datareader.GetValue(7).ToString();
							pricetxt.Text=datareader.GetValue(8).ToString();
							weightxt.Text=datareader.GetValue(9).ToString();
						
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
		private void InitializeComponent()
		{    

		}
		#endregion

		protected void update1cmd_Click(object sender, System.EventArgs e)
		{
			if(ValidationSummary1.Page.IsValid)
			{
				ob.update("Product","ProductName='" +productnametxt.Text+ "',Price='"+int.Parse(pricetxt.Text)+"',Quantity='"+int.Parse(quntitytxt.Text)+"'","ProductID='"+int.Parse(Page.Request["ID"].ToString())+"'");

				if (modeltxt.Text != null)
					ob.update("Product", "Model='"+modeltxt.Text+"'", "ProductID='"+int.Parse(Page.Request["ID"].ToString())+"'");
				if (weightxt.Text!="") 
					ob.update("Product", "Weight='"+Double.Parse(weightxt.Text.ToString())+ "'","ProductID='"+int.Parse(Page.Request["ID"].ToString())+"'");
				if (descriptiontxt.Text != null)
					ob.update("Product", "Description='" +descriptiontxt.Text+ "'","ProductID='"+int.Parse(Page.Request["ID"].ToString())+"'");
            
			}
			Response.Redirect("product.aspx");
		}

		private void cancelcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("product.aspx");
		}

		protected void deletecmd_Click(object sender, System.EventArgs e)
		{
			ob.delete("factor","ProductID='"+int.Parse(Page.Request["ID"].ToString())+"'");
		    ob.delete("Product","ProductID='"+int.Parse(Page.Request["ID"].ToString())+"'");
			Response.Redirect("product.aspx");
		}

		protected void updatecmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("update.aspx");
		}

		protected void addproductcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("addproduct.aspx");
		}

		protected void factorscmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("factors.aspx");
		}

		protected void homecmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("admin.aspx");
		}

		protected void productcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("Product.aspx");
		}
	}
}

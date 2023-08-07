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

namespace OnLineStore.Admin
{
	/// <summary>
	/// Summary description for addproduct.
	/// </summary>
	public partial class addproduct : System.Web.UI.Page
	{
		private codebehind ob=new codebehind();
		private DataSet dataset=new DataSet();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			dataset=new DataSet();
			ob.fillsearchddl("CategoryName,CategoryID","Category","HeadID",dataset);
			categoryddl.DataSource=dataset;
			categoryddl.DataMember=dataset.Tables[0].TableName;
			categoryddl.DataTextField="CategoryName";
			categoryddl.DataValueField="CategoryID";
			categoryddl.DataBind();
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

		protected void addcmd_Click(object sender, System.EventArgs e)
		{
			if(ValidationSummary1.Page.IsValid)
			{
				int loginid=int.Parse(Session["loginid"].ToString());
				int productid=0;
				productid = ob.insert("Product","CategoryID,ProductName,dateadded,Price,Quantity","'"+int.Parse(categoryddl.SelectedValue)+"','" +productnametxt.Text+ "','"+System.DateTime.Today.Date+"','"+int.Parse(pricetxt.Text)+"','"+int.Parse(quntitytxt.Text)+"'");

				if (modeltxt.Text != null)
					ob.update("Product", "Model='"+modeltxt.Text+"'", "ProductID='" + productid + "'");
				if (weightxt.Text!="") 
					ob.update("Product", "Weight='"+Double.Parse(weightxt.Text.ToString())+ "'", "ProductID='" + productid + "'");
				if (descriptiontxt.Text != null)
					ob.update("Product", "Description='" +descriptiontxt.Text+ "'", "ProductID='" + productid + "'");
            
			}
			Response.Redirect("Product.aspx");
		}

		protected void cancelcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("admin.aspx");
		}

		protected void sigmoutlink_Click(object sender, System.EventArgs e)
		{
			Session.Abandon();
			Response.Redirect("../index.aspx");
		}

		protected void updatecmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("update.aspx");
		}

		protected void addproductcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("addproduct.aspx");
		}

		protected void homecmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("admin.aspx");
		}

		protected void factorscmd_Click(object sender, System.EventArgs e)
		{
		Response.Redirect("factors.aspx");
		}

		protected void productcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("Product.aspx");
		}
	}
}

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
	/// Summary description for basket.
	/// </summary>
	public partial class basket : System.Web.UI.Page
	{
		private codebehind ob=new codebehind();
		
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			
			if(Session["basketid"]==null)
			{
				
				LblError.Text="No product in the basket";
				LblError.Visible=true;
				d1.Visible=false;
				//productcmd.Visible=false;
				editbasketcmd.Visible=false;
				cancelcmd.Visible=false;
				Button1.Visible=false;
				LblTotal.Visible=false;
				return;
			}
			if(!IsPostBack)
			{
				int bid=int.Parse(Session["basketid"].ToString());
				DataSet dataset=new DataSet();
				ob.get_Info("*","Factor INNER JOIN Product on Factor.ProductID=Product.ProductID","FactorID='"+bid+"'",dataset);
				d1.DataSource=dataset;
				d1.DataBind();
				
				if(d1.Items.Count==0)
				{
					LblError.Text="No product in the basket";
					LblError.Visible=true;
					d1.Visible=false;
					productcmd.Visible=false;
					cancelcmd.Visible=false;
					Button1.Visible=false;
					editbasketcmd.Visible=false;
					LblTotal.Visible=false;
					return;
				}
				LblTotal.Text="Total price : "+ob.get_ID("sum(Price * quantity)","Factor","FactorID='"+bid+"'");

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

		protected void productcmd_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("Product.aspx?CategoryID="+Page.Session["catid"]);
		}

		protected void editbasketcmd_Click(object sender, System.EventArgs e)
		{
			if(Session["basketid"]!=null)
			{
				int bid=int.Parse(Session["basketid"].ToString());
				for(int i=0;i<d1.Items.Count;i++)
				{
					CheckBox ch=(CheckBox) d1.Items[i].FindControl("CheckBox1");
					if(ch.Checked==true)
					{
						int s=int.Parse(d1.Items[i].Cells[0].Text);
						ob.delete("Factor","FactorID='"+bid+"' and ProductID='"+s+"'");
						continue;
					}
					TextBox tb=(TextBox) d1.Items[i].FindControl("EditQuantity");
					if(tb.Text!="")
					{
						int tbi=int.Parse(tb.Text);
						if(tbi==0)
						{
							int s=int.Parse(d1.Items[i].Cells[0].Text);
							ob.delete("Factor","FactorID='"+bid+"' and ProductID='"+s+"'");
						}
					}
				}
				//2.update all remaining rows
				for(int i=0;i<d1.Items.Count;i++)
				{
					
					TextBox tb=(TextBox)d1.Items[i].FindControl("EditQuantity");
					if(tb.Text!="")
					{
						int tbi=int.Parse(tb.Text);
						int s=int.Parse(d1.Items[i].Cells[0].Text);
						ob.update("Factor","quantity='"+tbi+"'","FactorID='"+bid+"' and ProductID='"+s+"'");
					}
				}
				DataSet dataset=new DataSet();
				ob.get_Info("*","Factor INNER JOIN Product on Factor.ProductID=Product.ProductID","FactorID='"+bid+"'",dataset);
				d1.DataSource=dataset;
				d1.DataBind();
				if(d1.Items.Count==0)
				{
					LblError.Text="No product in the basket";
					LblError.Visible=true;
					d1.Visible=false;
					//productcmd.Visible=false;
					cancelcmd.Visible=false;
					Button1.Visible=false;
					editbasketcmd.Visible=false;
					LblTotal.Visible=false;
					return;
				}
				LblTotal.Text="Total price : "+ob.get_ID("sum(Price * quantity)","Factor","FactorID='"+bid+"'");
				Response.Redirect("Basket.aspx");
			}
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			Session.Remove("basketid");
			Response.Redirect("submitorder.aspx");
		}

		protected void signoutlink_Click(object sender, System.EventArgs e)
		{
			Session.Abandon();
			Response.Redirect("index.aspx");
		}

		protected void cancelcmd_Click(object sender, System.EventArgs e)
		{
			if(Page.Session["basketid"]!=null)
			{
				ob.delete("Factor","FactorID='"+int.Parse(Page.Session["basketid"].ToString())+"'");
				Session.Remove("basketid");
			}
			Response.Redirect("welcome.aspx");
		}
	}
}

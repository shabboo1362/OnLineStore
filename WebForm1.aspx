<%@ Register TagPrefix="uc1" TagName="OurPolicy" Src="usercontrol/OurPolicy.ascx" %>
<%@ Register TagPrefix="uc1" TagName="DeliveryCondition" Src="usercontrol/DeliveryCondition.ascx" %>
<%@ Register TagPrefix="uc1" TagName="mostvisitedbuy" Src="usercontrol/mostvisitedbuy.ascx" %>
<%@ Register TagPrefix="uc1" TagName="search" Src="usercontrol/search.ascx" %>
<%@ Register TagPrefix="uc1" TagName="login" Src="usercontrol/login.ascx" %>
<%@ Page language="c#" Inherits="OnLineStore.WebForm1" CodeFile="WebForm1.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="1">
				<TR>
					<TD background="image/11.bmp"></TD>
				</TR>
				<TR>
					<TD>
						<TABLE id="Table2" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="1">
							<TR>
								<TD>
									<TABLE id="Table4" cellSpacing="1" cellPadding="1" width="300" border="1">
										<TR>
											<TD>
												<uc1:search id="Search1" runat="server"></uc1:search></TD>
										</TR>
										<TR>
											<TD>
												<uc1:mostvisitedbuy id="Mostvisitedbuy1" runat="server"></uc1:mostvisitedbuy></TD>
										</TR>
										<TR>
											<TD></TD>
										</TR>
									</TABLE>
								</TD>
								<TD>
									<asp:DataGrid id="DataGrid1" runat="server" AutoGenerateColumns="False" onselectedindexchanged="DataGrid1_SelectedIndexChanged">
										<Columns>
											<asp:TemplateColumn>
												<ItemTemplate>
													<asp:Button id="Button1" runat="server" Text="Button"></asp:Button>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:BoundColumn DataField="ProductName"></asp:BoundColumn>
											<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
										</Columns>
									</asp:DataGrid></TD>
								<TD>
									<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="300" border="1">
										<TR>
											<TD>
												<uc1:login id="Login1" runat="server"></uc1:login></TD>
										</TR>
										<TR>
											<TD>
												<uc1:DeliveryCondition id="DeliveryCondition1" runat="server"></uc1:DeliveryCondition></TD>
										</TR>
										<TR>
											<TD>
												<uc1:OurPolicy id="OurPolicy1" runat="server"></uc1:OurPolicy></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>

<%@ Register TagPrefix="uc1" TagName="mostvisitedbuy" Src="uc/mostvisitedbuy.ascx" %>
<%@ Register TagPrefix="uc1" TagName="search" Src="uc/search.ascx" %>
<%@ Page language="c#" Inherits="OnLineStore.Admin.report" CodeFile="report.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="logo" Src="uc/logo.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>admin</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" height="100%" cellSpacing="1" cellPadding="1" width="100%" bgColor="snow"
				border="0">
				<TR>
					<TD>
						<uc1:logo id="Logo1" runat="server"></uc1:logo></TD>
				</TR>
				<TR>
					<TD vAlign="top" height="30">
						<TABLE id="Table2" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
							<TR width="100%">
								<td style="WIDTH: 218px" width="218"><asp:button id="Requestcmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="home" CausesValidation="False" onclick="Requestcmd_Click"></asp:button></td>
								<TD align="center" width="15%"><asp:button id="Button1" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="Factors" CausesValidation="False" onclick="Button1_Click"></asp:button></TD>
								<TD align="center" width="15%"><asp:button id="addproductcmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="add product" CausesValidation="False" onclick="addproductcmd_Click"></asp:button></TD>
								<TD align="center" width="15%"><asp:button id="updatecmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="update" CausesValidation="False" onclick="updatecmd_Click"></asp:button></TD>
								<TD align="left" width="40%">
									<asp:Button id="productcmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="Product" CausesValidation="False" onclick="productcmd_Click"></asp:Button></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 218px" width="218"><asp:linkbutton id="signoutlink" runat="server" onclick="signoutlink_Click">Sign Out</asp:linkbutton></TD>
								<TD align="left" width="15%"></TD>
								<TD align="center" width="15%"></TD>
								<TD align="center" width="15%"></TD>
								<TD align="center" width="15%"></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD>
						<TABLE id="Table3" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
							<TR>
								<TD width="80%">
									<TABLE id="Table4" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
										<TR>
											<TD vAlign="top"><asp:datagrid id="d1" runat="server" Width="472px" BorderColor="#E7E7FF" BackColor="White" Font-Names="Verdana"
													Font-Size="9pt" BorderWidth="1px" BorderStyle="None" PageSize="1" AutoGenerateColumns="False" CellPadding="3"
													GridLines="Horizontal">
													<ItemStyle Font-Size="12px" Font-Names="Verdana" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
													<HeaderStyle Font-Size="12px" Font-Names="Verdana" HorizontalAlign="Center" ForeColor="#F7F7F7"
														VerticalAlign="Middle" BackColor="#4A3C8C"></HeaderStyle>
													<Columns>
														<asp:BoundColumn DataField="firstName" HeaderText="first Name"></asp:BoundColumn>
														<asp:BoundColumn DataField="LastName" HeaderText="Last Name"></asp:BoundColumn>
														<asp:BoundColumn DataField="Tel" HeaderText="Tel"></asp:BoundColumn>
														<asp:BoundColumn DataField="State" HeaderText="State"></asp:BoundColumn>
														<asp:BoundColumn DataField="City" HeaderText="City"></asp:BoundColumn>
													</Columns>
												</asp:datagrid></TD>
										</TR>
										<TR>
											<TD></TD>
										</TR>
									</TABLE>
								</TD>
								<TD width="20%">
									<TABLE id="Table5" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
										<TR>
											<TD><uc1:search id="Search1" runat="server"></uc1:search></TD>
										</TR>
										<TR>
											<TD><uc1:mostvisitedbuy id="Mostvisitedbuy1" runat="server"></uc1:mostvisitedbuy></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>

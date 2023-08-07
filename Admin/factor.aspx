<%@ Register TagPrefix="uc1" TagName="mostvisitedbuy" Src="uc/mostvisitedbuy.ascx" %>
<%@ Register TagPrefix="uc1" TagName="search" Src="uc/search.ascx" %>
<%@ Page language="c#" Inherits="OnLineStore.Admin.factor" CodeFile="factor.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="logo" Src="uc/logo.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>factor</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0"
				bgColor="snow">
				<TR>
					<TD width="100%" height="110">
						<uc1:logo id="Logo1" runat="server"></uc1:logo></TD>
				</TR>
				<TR>
					<TD height="30" vAlign="top">
						<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="100%" border="0" height="100%">
							<TR width="100%">
								<td width="15%" style="WIDTH: 225px">
									<asp:Button id="homecmd" runat="server" Text="home" Height="30px" BackColor="Bisque" BorderColor="DarkOrange"
										CausesValidation="False" onclick="homecmd_Click"></asp:Button>
								</td>
								<TD width="15%" align="center">
									<asp:Button id="requestcmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="Factors" CausesValidation="False" onclick="requestcmd_Click"></asp:Button></TD>
								<TD width="15%" align="center">
									<asp:Button id="addproductcmd" runat="server" Text="Add product" Height="30px" BackColor="Bisque"
										BorderColor="DarkOrange" CausesValidation="False" onclick="addproductcmd_Click"></asp:Button></TD>
								<TD align="center" width="15%">
									<asp:Button id="updatecmd" runat="server" Text="update" Height="30px" BackColor="Bisque" BorderColor="DarkOrange"
										CausesValidation="False" onclick="updatecmd_Click"></asp:Button></TD>
								<TD align="left" width="140%">
									<asp:Button id="productcmd" runat="server" Text="Product" Height="30px" BackColor="Bisque" BorderColor="DarkOrange"
										CausesValidation="False" onclick="productcmd_Click"></asp:Button></TD>
							</TR>
							<TR>
								<TD width="234" align="left" style="WIDTH: 225px">
									<asp:LinkButton id="sigmoutlink" runat="server">Sign Out</asp:LinkButton></TD>
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
											<TD vAlign="top" width="100%">
												<asp:DataGrid id="DataGrid1" runat="server" Width="100%" BackColor="White" BorderColor="#E7E7FF"
													BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AutoGenerateColumns="False"
													AllowPaging="True">
													<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
													<AlternatingItemStyle BackColor="#F7F7F7"></AlternatingItemStyle>
													<ItemStyle ForeColor="#4A3C8C" BackColor="#E7E7FF"></ItemStyle>
													<HeaderStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#4A3C8C"></HeaderStyle>
													<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
													<Columns>
														<asp:BoundColumn DataField="ProductName" HeaderText="ProductName"></asp:BoundColumn>
														<asp:BoundColumn DataField="Price" HeaderText="Price"></asp:BoundColumn>
														<asp:BoundColumn DataField="quantity" HeaderText="Quantity"></asp:BoundColumn>
													</Columns>
													<PagerStyle HorizontalAlign="Right" ForeColor="#4A3C8C" BackColor="#E7E7FF" Mode="NumericPages"></PagerStyle>
												</asp:DataGrid>
											</TD>
										</TR>
										<TR>
											<TD vAlign="top" width="100%">
												<P>
													<asp:Label id="totalprice" runat="server">Label</asp:Label></P>
												<P>
													<asp:Label id="Address" runat="server"></asp:Label></P>
											</TD>
										</TR>
										<TR>
											<TD vAlign="top" width="100%">
												<P align="center">
													<asp:Button id="Button1" runat="server" Text="Accept" BackColor="Bisque" BorderColor="DarkOrange" onclick="Button1_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<asp:Button id="deletecmd" runat="server" Text="Delete" BackColor="Bisque" BorderColor="DarkOrange" onclick="deletecmd_Click"></asp:Button></P>
											</TD>
										</TR>
									</TABLE>
								</TD>
								<TD width="20%">
									<TABLE id="Table5" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
										<TR>
											<TD>
												<uc1:search id="Search1" runat="server"></uc1:search></TD>
										</TR>
										<TR>
											<TD>
												<uc1:mostvisitedbuy id="Mostvisitedbuy1" runat="server"></uc1:mostvisitedbuy></TD>
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

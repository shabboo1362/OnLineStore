<%@ Reference Page="~/product.aspx" %>
<%@ Register TagPrefix="uc1" TagName="mostvisitedbuy" Src="uc/mostvisitedbuy.ascx" %>
<%@ Register TagPrefix="uc1" TagName="search" Src="uc/search.ascx" %>
<%@ Page language="c#" Inherits="OnLineStore.Admin.product" CodeFile="product.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="logo" Src="uc/logo.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>admin</title>
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
					<TD>
						<uc1:logo id="Logo1" runat="server"></uc1:logo></TD>
				</TR>
				<TR>
					<TD height="30" vAlign="top">
						<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="100%" border="0" height="100%">
							<TR width="100%">
								<td width="226" style="WIDTH: 226px">
									<asp:Button id="homecmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="home" CausesValidation="False" onclick="homecmd_Click"></asp:Button>
								</td>
								<TD width="15%" align="center">
									<asp:Button id="requestcmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="Factors" CausesValidation="False" onclick="requestcmd_Click"></asp:Button></TD>
								<TD width="15%" align="center">
									<asp:Button id="addproductcmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="add product" CausesValidation="False" onclick="addproductcmd_Click"></asp:Button></TD>
								<TD align="center" width="15%">
									<asp:Button id="updatecmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="update" CausesValidation="False" onclick="updatecmd_Click"></asp:Button></TD>
								<TD align="left" width="40%">
									<asp:Button id="productcmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="Product" CausesValidation="False" onclick="productcmd_Click"></asp:Button></TD>
							</TR>
							<TR>
								<TD width="226" style="WIDTH: 226px">
									<asp:LinkButton id="signoutlink" runat="server" onclick="signoutlink_Click">Sign Out</asp:LinkButton></TD>
								<TD align="center" width="15%"></TD>
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
											<TD vAlign="top">
												<asp:datagrid id="d1" runat="server" Width="90%" BorderColor="#E7E7FF" BackColor="White" GridLines="Horizontal"
													CellPadding="3" AutoGenerateColumns="False" BorderStyle="None" BorderWidth="1px" Font-Size="9pt"
													Font-Names="Verdana" AllowPaging="True" onselectedindexchanged="d1_SelectedIndexChanged">
													<ItemStyle Font-Size="12px" Font-Names="Verdana" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
													<HeaderStyle Font-Size="12px" Font-Names="Verdana" HorizontalAlign="Center" ForeColor="#F7F7F7"
														VerticalAlign="Middle" BackColor="#4A3C8C"></HeaderStyle>
													<Columns>
														<asp:HyperLinkColumn DataNavigateUrlField="ProductID" DataNavigateUrlFormatString="updateproduct.aspx?ID={0}"
															DataTextField="ProductName" HeaderText="ProductName" NavigateUrl="updateproduct.aspx"></asp:HyperLinkColumn>
														<asp:BoundColumn DataField="ProductName" HeaderText="Product Name"></asp:BoundColumn>
														<asp:BoundColumn DataField="Price" HeaderText="Price"></asp:BoundColumn>
														<asp:BoundColumn DataField="Model" HeaderText="Model"></asp:BoundColumn>
														<asp:BoundColumn DataField="Description" HeaderText="Description"></asp:BoundColumn>
													</Columns>
													<PagerStyle NextPageText="" PrevPageText="" PageButtonCount="5" Mode="NumericPages"></PagerStyle>
												</asp:datagrid></TD>
										</TR>
										<TR>
											<TD>
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

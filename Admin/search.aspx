<%@ Reference Page="~/search.aspx" %>
<%@ Page language="c#" Inherits="OnLineStore.Admin.search" CodeFile="search.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="logo" Src="uc/logo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="mostvisitedbuy" Src="uc/mostvisitedbuy.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>search</title>
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
								<td width="218" style="WIDTH: 218px">
									<asp:Button id="Requestcmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="home" CausesValidation="False" onclick="Requestcmd_Click"></asp:Button>
								</td>
								<TD width="15%" align="center">
									<asp:Button id="Button1" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="Factors" CausesValidation="False" onclick="Button1_Click"></asp:Button></TD>
								<TD width="15%" align="center">
									<asp:Button id="addproductcmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="add product" CausesValidation="False" onclick="addproductcmd_Click"></asp:Button></TD>
								<TD align="center" width="15%">
									<asp:Button id="updatecmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="update" CausesValidation="False" onclick="updatecmd_Click"></asp:Button></TD>
								<TD align="left" width="40%">
									<asp:Button id="productcmd" runat="server" Text="Product" Height="30px" BackColor="Bisque" BorderColor="DarkOrange"
										CausesValidation="False" onclick="productcmd_Click"></asp:Button></TD>
							</TR>
							<TR>
								<TD width="218" style="WIDTH: 218px">
									<asp:LinkButton id="signoutlink" runat="server">Sign Out</asp:LinkButton></TD>
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
											<TD>
												<asp:datagrid id="d1" runat="server" Width="100%" Height="100%" BackColor="White" BorderColor="#E7E7FF"
													Font-Names="Verdana" Font-Size="8pt" BorderWidth="1px" BorderStyle="None" AutoGenerateColumns="False"
													CellPadding="3" GridLines="Horizontal" AllowPaging="True">
													<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
													<AlternatingItemStyle BackColor="#F7F7F7"></AlternatingItemStyle>
													<ItemStyle ForeColor="#4A3C8C" BackColor="#E7E7FF"></ItemStyle>
													<HeaderStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#4A3C8C"></HeaderStyle>
													<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
													<Columns>
														<asp:BoundColumn DataField="ProductName"></asp:BoundColumn>
														<asp:BoundColumn DataField="Description"></asp:BoundColumn>
														<asp:BoundColumn DataField="Model" HeaderText="Model"></asp:BoundColumn>
														<asp:BoundColumn DataField="Price" HeaderText="Price"></asp:BoundColumn>
														<asp:BoundColumn DataField="Image"></asp:BoundColumn>
													</Columns>
													<PagerStyle VerticalAlign="Middle" HorizontalAlign="Center" ForeColor="#4A3C8C" BackColor="#E7E7FF"
														PageButtonCount="5" Mode="NumericPages"></PagerStyle>
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
												<uc1:mostvisitedbuy id="Mostvisitedbuy2" runat="server"></uc1:mostvisitedbuy></UC1:SEARCH></TD>
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

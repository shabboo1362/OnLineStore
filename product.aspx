<%@ Page language="c#" Inherits="OnLineStore.product" CodeFile="product.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="mostvisited" Src="usercontrol/mostvisited.ascx" %>
<%@ Register TagPrefix="uc1" TagName="hotproducts" Src="usercontrol/hotproducts.ascx" %>
<%@ Register TagPrefix="uc1" TagName="logo" Src="usercontrol/logo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="search" Src="usercontrol/search.ascx" %>
<%@ Register TagPrefix="uc1" TagName="OurPolicy" Src="usercontrol/OurPolicy.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
				<TR>
					<TD height="125"><uc1:logo id="Logo1" runat="server"></uc1:logo></TD>
				</TR>
				<TR>
					<TD height="25">
						<TABLE id="Table6" cellSpacing="1" cellPadding="1" width="100%" border="0">
							<TR>
								<TD width="10%"><asp:hyperlink id="indexlink" runat="server" Visible="False" NavigateUrl="index.aspx">Home</asp:hyperlink></TD>
								<TD width="10%"><asp:hyperlink id="joinnowlink" runat="server" Visible="False" NavigateUrl="register.aspx">Join Now</asp:hyperlink></TD>
								<TD width="90%"></TD>
							</TR>
							<TR>
								<TD width="10%">
									<asp:HyperLink id="welcomelink" runat="server" NavigateUrl="welcome.aspx">Home</asp:HyperLink></TD>
								<TD width="10%">
									<asp:LinkButton id="signoutlink" runat="server">Sign out</asp:LinkButton></TD>
								<TD width="90%"></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD>
						<HR color="#999999">
						<TABLE id="Table2" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
							<TR>
								<TD vAlign="top" width="20%">
									<TABLE id="Table4" cellSpacing="1" cellPadding="1" width="100%" border="0">
										<TR>
											<TD><uc1:search id="Search1" runat="server"></uc1:search></TD>
										</TR>
										<TR>
											<TD><uc1:ourpolicy id="OurPolicy1" runat="server"></uc1:ourpolicy></TD>
										</TR>
										<TR>
											<TD></TD>
										</TR>
									</TABLE>
								</TD>
								<TD width="60%">
									<TABLE id="Table5" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
										<TR>
											<TD vAlign="top" align="right">
												<table cellSpacing="0" cellPadding="0" width="98%">
													<tr width="100%">
														<td style="FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Verdana; HEIGHT: 20px"
															vAlign="middle" align="left" width="100%" bgColor="#99ccff">Browse by Category</td>
													</tr>
													<tr width="75%">
														<td vAlign="top" align="center" width="100%" background="images/600x275.gif"><asp:datagrid id="d1" runat="server" Font-Size="8pt" Font-Names="Verdana" AutoGenerateColumns="False"
																AllowPaging="True" Width="100%" BorderWidth="1px" CellPadding="3" BorderColor="#E7E7FF" BorderStyle="None" BackColor="White">
																<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
																<AlternatingItemStyle BackColor="#F7F7F7"></AlternatingItemStyle>
																<ItemStyle Font-Size="12px" Font-Names="Verdana" HorizontalAlign="Left" ForeColor="#4A3C8C"
																	VerticalAlign="Middle" BackColor="#E7E7FF"></ItemStyle>
																<HeaderStyle Font-Size="12px" Font-Names="Verdana" Font-Bold="True" HorizontalAlign="Center"
																	ForeColor="#F7F7F7" VerticalAlign="Middle" BackColor="#4A3C8C"></HeaderStyle>
																<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
																<Columns>
																	<asp:BoundColumn DataField="ProductName" HeaderText="ProductName"></asp:BoundColumn>
																	<asp:BoundColumn DataField="Description" HeaderText="Description"></asp:BoundColumn>
																	<asp:BoundColumn DataField="Quantity" HeaderText="Quantity"></asp:BoundColumn>
																	<asp:BoundColumn DataField="Model" HeaderText="Model"></asp:BoundColumn>
																	<asp:BoundColumn DataField="Price" HeaderText="Price"></asp:BoundColumn>
																	<asp:BoundColumn DataField="Weight" HeaderText="Weight"></asp:BoundColumn>
																	<asp:HyperLinkColumn Text="AddtoBasket" DataNavigateUrlField="ProductID" DataNavigateUrlFormatString="addtobasket.aspx?ID={0}"
																		NavigateUrl="addtobasket.aspx"></asp:HyperLinkColumn>
																</Columns>
																<PagerStyle VerticalAlign="Middle" HorizontalAlign="Right" ForeColor="#4A3C8C" BackColor="#E7E7FF"
																	Mode="NumericPages"></PagerStyle>
															</asp:datagrid></td>
													</tr>
													<TR>
														<TD vAlign="top" align="left" width="100%" background="images/600x275.gif"><asp:label id="Label1" runat="server" Visible="False">You should sign in to bye any product</asp:label><asp:hyperlink id="signinlink" runat="server" Visible="False" NavigateUrl="signin.aspx">Sign In</asp:hyperlink></TD>
													</TR>
													<TR>
														<TD vAlign="top" align="center" width="100%" background="images/600x275.gif">
															<TABLE id="Table7" cellSpacing="1" cellPadding="1" width="100%" border="0">
																<TR>
																	<TD width="10%"></TD>
																	<TD width="15%">
																		<asp:Button id="editcmd" runat="server" BorderColor="SteelBlue" BackColor="Lavender" Text="Edit Basket"
																			CausesValidation="False" onclick="editcmd_Click"></asp:Button></TD>
																	<TD width="15%">
																		<asp:Button id="cancelcmd" runat="server" BorderColor="SteelBlue" BackColor="Lavender" Text="Cancel "
																			CausesValidation="False" onclick="cancelcmd_Click"></asp:Button></TD>
																</TR>
															</TABLE>
														</TD>
													</TR>
												</table>
											</TD>
										</TR>
									</TABLE>
								</TD>
								<TD vAlign="top" width="20%">
									<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="100%" border="0">
										<TR>
											<TD>
												<uc1:mostvisited id="Mostvisited1" runat="server"></uc1:mostvisited></TD>
										<TR>
											<TD>
												<uc1:hotproducts id="Hotproducts1" runat="server"></uc1:hotproducts></TD>
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
		l&gt;
	</body>
</HTML>

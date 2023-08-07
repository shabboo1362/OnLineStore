<%@ Register TagPrefix="uc1" TagName="search" Src="usercontrol/search.ascx" %>
<%@ Register TagPrefix="uc1" TagName="OurPolicy" Src="usercontrol/OurPolicy.ascx" %>
<%@ Register TagPrefix="uc1" TagName="hotproducts" Src="usercontrol/hotproducts.ascx" %>
<%@ Register TagPrefix="uc1" TagName="mostvisited" Src="usercontrol/mostvisited.ascx" %>
<%@ Page language="c#" Inherits="OnLineStore.basket" CodeFile="basket.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="logo" Src="usercontrol/logo.ascx" %>
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
					<TD height="125">
						<uc1:logo id="Logo1" runat="server"></uc1:logo></TD>
				</TR>
				<TR>
					<TD height="25">
						<TABLE id="Table6" cellSpacing="1" cellPadding="1" width="100%" border="0">
							<TR>
								<TD width="10%">
									<asp:HyperLink id="homelink" runat="server" NavigateUrl="welcome.aspx">Home</asp:HyperLink></TD>
								<TD width="90%">
									<asp:LinkButton id="signoutlink" runat="server" onclick="signoutlink_Click">Sign Out</asp:LinkButton></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD>
						<HR color="#999999">
						<TABLE id="Table2" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
							<TR>
								<TD width="20%" vAlign="top">
									<TABLE width="100%" id="Table4" cellSpacing="1" cellPadding="1" border="0">
										<TR>
											<TD>
												<uc1:search id="Search1" runat="server"></uc1:search></TD>
										</TR>
										<TR>
											<TD>
												<uc1:OurPolicy id="OurPolicy1" runat="server"></uc1:OurPolicy></TD>
										</TR>
										<TR>
											<TD></TD>
										</TR>
									</TABLE>
								</TD>
								<TD width="60%">
									<TABLE id="Table5" width="100%" height="100%" cellSpacing="1" cellPadding="1" border="0">
										<TR>
											<TD vAlign="top" align="right"><table cellSpacing="0" cellPadding="0" width="98%">
													<TR>
														<TD style="FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Verdana; HEIGHT: 20px"
															vAlign="middle" align="left" width="100%">
															<asp:Label id="LblError" runat="server" ForeColor="Red" Visible="False"></asp:Label></TD>
													</TR>
													<tr width="75%">
														<td vAlign="top" align="left" width="100%" background="images/600x275.gif"><asp:datagrid id="d1" runat="server" BackColor="White" BorderStyle="None" BorderColor="#E7E7FF"
																CellPadding="3" BorderWidth="1px" Width="100%" AllowPaging="True" AutoGenerateColumns="False" Font-Names="Verdana" Font-Size="8pt">
																<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
																<AlternatingItemStyle BackColor="#F7F7F7"></AlternatingItemStyle>
																<ItemStyle Font-Size="12px" Font-Names="Verdana" HorizontalAlign="Left" ForeColor="#4A3C8C"
																	VerticalAlign="Middle" BackColor="#E7E7FF"></ItemStyle>
																<HeaderStyle Font-Size="12px" Font-Names="Verdana" Font-Bold="True" HorizontalAlign="Center"
																	ForeColor="#F7F7F7" VerticalAlign="Middle" BackColor="#4A3C8C"></HeaderStyle>
																<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
																<Columns>
																	<asp:BoundColumn DataField="ProductID"></asp:BoundColumn>
																	<asp:TemplateColumn HeaderText="Delete">
																		<ItemTemplate>
																			<asp:CheckBox id="CheckBox1" runat="server"></asp:CheckBox>
																		</ItemTemplate>
																	</asp:TemplateColumn>
																	<asp:BoundColumn DataField="ProductName" HeaderText="ProductName"></asp:BoundColumn>
																	<asp:BoundColumn DataField="quantity" HeaderText="Quantity"></asp:BoundColumn>
																	<asp:TemplateColumn HeaderText="Edit Quantity">
																		<ItemTemplate>
																			<asp:TextBox id="EditQuantity" runat="server" Width="32px"></asp:TextBox>
																		</ItemTemplate>
																	</asp:TemplateColumn>
																	<asp:BoundColumn DataField="Price" HeaderText="Price"></asp:BoundColumn>
																</Columns>
																<PagerStyle VerticalAlign="Middle" HorizontalAlign="Right" ForeColor="#4A3C8C" BackColor="#E7E7FF"
																	Mode="NumericPages"></PagerStyle>
															</asp:datagrid>
															<asp:Label id="LblTotal" runat="server"></asp:Label></td>
													</tr>
													<TR>
														<TD vAlign="top" align="left" width="100%" background="images/600x275.gif">
															<TABLE id="Table7" cellSpacing="1" cellPadding="1" width="100%" border="0">
																<TR>
																	<TD width="20%">
																		<asp:Button id="productcmd" runat="server" BorderColor="SteelBlue" BackColor="Lavender" Text="Add Another Product" onclick="productcmd_Click"></asp:Button></TD>
																	<TD width="15%">
																		<asp:Button id="editbasketcmd" runat="server" BorderColor="SteelBlue" BackColor="Lavender" Text="Edit Basket" onclick="editbasketcmd_Click"></asp:Button></TD>
																	<TD width="15%">
																		<asp:Button id="Button1" runat="server" BorderColor="SteelBlue" BackColor="Lavender" Text="Submit" onclick="Button1_Click"></asp:Button></TD>
																	<TD width="15%">
																		<asp:Button id="cancelcmd" runat="server" BorderColor="SteelBlue" BackColor="Lavender" Text="Cancel" onclick="cancelcmd_Click"></asp:Button></TD>
																</TR>
															</TABLE>
														</TD>
													</TR>
												</table>
											</TD>
										</TR>
									</TABLE>
								</TD>
								<TD width="20%" vAlign="top">
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

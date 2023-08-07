<%@ Register TagPrefix="uc1" TagName="OurPolicy" Src="usercontrol/OurPolicy.ascx" %>
<%@ Register TagPrefix="uc1" TagName="search" Src="usercontrol/search.ascx" %>
<%@ Register TagPrefix="uc1" TagName="login" Src="usercontrol/login.ascx" %>
<%@ Register TagPrefix="uc1" TagName="mostvisited" Src="usercontrol/mostvisited.ascx" %>
<%@ Register TagPrefix="uc1" TagName="hotproducts" Src="usercontrol/hotproducts.ascx" %>
<%@ Page language="c#" Inherits="OnLineStore.welcome" CodeFile="welcome.aspx.cs" %>
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
								<TD width="30%">
									<asp:Label id="welcomelbl" runat="server" Visible="False"></asp:Label></TD>
								<TD width="10%">
									<asp:HyperLink id="editlink" runat="server" NavigateUrl="update.aspx">Edit Profile</asp:HyperLink></TD>
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
												<uc1:OurPolicy id="OurPolicy2" runat="server"></uc1:OurPolicy></TD>
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
													<tr width="100%">
														<td vAlign="middle" style="FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Verdana; HEIGHT: 20px"
															width="100%" bgColor="#99ccff" align="left">Browse by Category</td>
													</tr>
													<tr width="75%">
														<td vAlign="top" align="center" width="100%" background="images/600x275.gif"><asp:datagrid id="d1" runat="server" BackColor="White" BorderStyle="None" BorderColor="#E7E7FF"
																GridLines="Horizontal" CellPadding="3" BorderWidth="1px" Width="100%" AllowPaging="True" AutoGenerateColumns="False" ShowHeader="False" Font-Names="Verdana" Font-Size="8pt">
																<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
																<AlternatingItemStyle BackColor="#F7F7F7"></AlternatingItemStyle>
																<ItemStyle Font-Size="12px" Font-Names="Verdana" HorizontalAlign="Left" ForeColor="#4A3C8C"
																	VerticalAlign="Middle" BackColor="#E7E7FF"></ItemStyle>
																<HeaderStyle Font-Size="12px" Font-Names="Verdana" Font-Bold="True" HorizontalAlign="Center"
																	ForeColor="#F7F7F7" VerticalAlign="Middle" BackColor="#4A3C8C"></HeaderStyle>
																<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
																<Columns>
																	<asp:HyperLinkColumn Target="_parent" DataNavigateUrlField="CategoryID" DataNavigateUrlFormatString="subcategory.aspx?CategoryID={0}"
																		DataTextField="CategoryName" NavigateUrl="subcategory.aspx"></asp:HyperLinkColumn>
																</Columns>
																<PagerStyle VerticalAlign="Middle" HorizontalAlign="Center" ForeColor="#4A3C8C" BackColor="#E7E7FF"
																	Mode="NumericPages"></PagerStyle>
															</asp:datagrid></td>
													</tr>
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
	</body>
</HTML>

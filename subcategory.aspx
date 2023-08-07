<%@ Register TagPrefix="uc1" TagName="search" Src="usercontrol/search.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ourpolicy" Src="usercontrol/ourpolicy.ascx" %>
<%@ Register TagPrefix="uc1" TagName="hotproducts" Src="usercontrol/hotproducts.ascx" %>
<%@ Register TagPrefix="uc1" TagName="mostvisited" Src="usercontrol/mostvisited.ascx" %>
<%@ Register TagPrefix="uc1" TagName="login" Src="usercontrol/login.ascx" %>
<%@ Page language="c#" Inherits="OnLineStore.subcategory" CodeFile="subcategory.aspx.cs" %>
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
			<TABLE style="LEFT: 0px; TOP: 0px" id="Table1" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD height="129" style="HEIGHT: 129px">
						<uc1:logo id="Logo1" runat="server"></uc1:logo></TD>
				</TR>
				<tr>
					<td vAlign="middle" align="left" height="26">
						<TABLE id="Table5" cellSpacing="1" cellPadding="1" border="0" style="HEIGHT: 24px" width="400">
							<TR>
								<TD style="WIDTH: 69px">&nbsp;
									<asp:HyperLink id="home" runat="server" NavigateUrl="index.aspx" Font-Bold="True" Font-Names="Verdana"
										Font-Size="9pt">Home</asp:HyperLink></TD>
								<TD>&nbsp;
									<asp:HyperLink id="joinnow" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="9pt"
										NavigateUrl="register.aspx">Join Now</asp:HyperLink></TD>
								<td></td>
							</TR>
							<TR>
								<TD style="WIDTH: 69px">
									<asp:HyperLink id="homelink" runat="server" NavigateUrl="welcome.aspx" Visible="False">Home</asp:HyperLink></TD>
								<TD>
									<asp:LinkButton id="signout" runat="server" Font-Size="9pt" Font-Names="Verdana" Font-Bold="True"
										Visible="False" onclick="signout_Click">[ Sign out ]</asp:LinkButton></TD>
								<TD></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<TR>
					<TD>
						<HR color="#999999">
						<TABLE id="Table2" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
							<TR>
								<TD vAlign="top" align="center" width="25%">
									<TABLE id="Table4" cellSpacing="1" cellPadding="2" width="100%" align="center" border="0">
										<TR>
											<TD align="center">
												<uc1:search id="Search1" runat="server"></uc1:search></TD>
										</TR>
										<TR>
											<TD align="center" vAlign="bottom">
												<uc1:ourpolicy id="Ourpolicy1" runat="server"></uc1:ourpolicy></TD>
										</TR>
										<TR>
											<TD align="center"></TD>
										</TR>
									</TABLE>
								</TD>
								<TD vAlign="top" width="50%" align="center">
									<table cellSpacing="0" cellPadding="0" width="98%">
										<tr width="100%">
											<td vAlign="middle" height="20" width="100%" style="FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Verdana"
												bgColor="#99ccff">Browse by Category</td>
										</tr>
										<tr width="75%">
											<td vAlign="top" align="center" width="100%" background="images/600x275.gif"><asp:datagrid id="d1" runat="server" ShowHeader="False" AutoGenerateColumns="False" AllowPaging="True"
													Width="100%" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" BorderColor="#E7E7FF" BorderStyle="None" BackColor="White" Font-Names="Verdana" Font-Size="8pt">
													<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
													<AlternatingItemStyle BackColor="#F7F7F7"></AlternatingItemStyle>
													<ItemStyle Font-Size="12px" Font-Names="Verdana" HorizontalAlign="Left" ForeColor="#4A3C8C"
														VerticalAlign="Middle" BackColor="#E7E7FF"></ItemStyle>
													<HeaderStyle Font-Size="12px" Font-Names="Verdana" Font-Bold="True" HorizontalAlign="Center"
														ForeColor="#F7F7F7" VerticalAlign="Middle" BackColor="#4A3C8C"></HeaderStyle>
													<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
													<Columns>
														<asp:HyperLinkColumn Target="_parent" DataNavigateUrlField="CategoryID" DataNavigateUrlFormatString="product.aspx?CategoryID={0}"
															DataTextField="CategoryName" NavigateUrl="product.aspx"></asp:HyperLinkColumn>
													</Columns>
													<PagerStyle VerticalAlign="Middle" HorizontalAlign="Center" ForeColor="#4A3C8C" BackColor="#E7E7FF"
														Mode="NumericPages"></PagerStyle>
												</asp:datagrid></td>
										</tr>
									</table>
								</TD>
								<TD vAlign="top" width="25%">
									<TABLE id="Table3" cellSpacing="1" cellPadding="2" width="100%" align="center" border="0">
										<TR>
											<TD align="center">
												<uc1:hotproducts id="Hotproducts1" runat="server"></uc1:hotproducts></TD>
										</TR>
										<TR>
											<TD align="center" vAlign="bottom" style="HEIGHT: 2px">
												<uc1:mostvisited id="Mostvisited1" runat="server"></uc1:mostvisited></TD>
										</TR>
										<TR>
											<TD align="center" vAlign="bottom"></TD>
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

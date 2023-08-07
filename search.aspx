
<%@ Register TagPrefix="uc1" TagName="search" Src="usercontrol/search.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ourpolicy" Src="usercontrol/ourpolicy.ascx" %>
<%@ Register TagPrefix="uc1" TagName="mostvisited" Src="usercontrol/mostvisited.ascx" %>
<%@ Register TagPrefix="uc1" TagName="hotproducts" Src="usercontrol/hotproducts.ascx" %>
<%@ Register TagPrefix="uc1" TagName="logo" Src="usercontrol/logo.ascx" %>
<%@ Page language="c#" Inherits="OnLineStore.search" CodeFile="search.aspx.cs" %>
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
			<TABLE id="Table1" style="LEFT: 0px; TOP: 0px" height="100%" cellSpacing="1" cellPadding="1"
				width="100%" border="0">
				<TR>
					<TD style="HEIGHT: 129px" height="129">
						<uc1:logo id="Logo1" runat="server"></uc1:logo></TD>
				</TR>
				<tr>
					<td vAlign="top" align="left" height="26">
						<TABLE id="Table5" style="HEIGHT: 24px" cellSpacing="1" cellPadding="1" width="400" border="0">
							<TR>
								<TD style="WIDTH: 59px">&nbsp;<asp:hyperlink id="home" runat="server" NavigateUrl="index.aspx" Font-Bold="True" Font-Names="Verdana"
										Font-Size="9pt">Home</asp:hyperlink></TD>
								<TD style="WIDTH: 88px">&nbsp;
									<asp:hyperlink id="joinnow" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="9pt"
										NavigateUrl="joinnow.aspx">Join Now</asp:hyperlink></TD>
								<td style="WIDTH: 79px"><asp:label id="welcome" runat="server" Visible="False" Font-Bold="True" Font-Names="Verdana"
										Font-Size="9pt">Welcome </asp:label></td>
								<td>
									<asp:LinkButton id="signout" runat="server" Font-Size="9pt" Font-Names="Verdana" Font-Bold="True"
										Visible="False" onclick="signout_Click">[ Sign out ]</asp:LinkButton></td>
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
											<TD vAlign="bottom" align="center">
												<uc1:ourpolicy id="Ourpolicy1" runat="server"></uc1:ourpolicy></TD>
										</TR>
										<TR>
											<TD align="center"></TD>
										</TR>
									</TABLE>
								</TD>
								<TD vAlign="top" align="center" width="100%">
									<table cellSpacing="0" cellPadding="0" width="98%">
										<tr width="75%">
											<td vAlign="top" align="center" width="100%" background="images/600x275.gif"><asp:datagrid id="d1" runat="server" BackColor="White" BorderStyle="None" BorderColor="#E7E7FF"
													GridLines="Horizontal" CellPadding="3" BorderWidth="1px" Width="100%" AllowPaging="True" AutoGenerateColumns="False" Height="100%" Font-Names="Verdana" Font-Size="8pt">
													<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
													<AlternatingItemStyle BackColor="#F7F7F7"></AlternatingItemStyle>
													<ItemStyle ForeColor="#4A3C8C" BackColor="#E7E7FF"></ItemStyle>
													<HeaderStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#4A3C8C"></HeaderStyle>
													<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
													<Columns>
														<asp:HyperLinkColumn DataNavigateUrlField="ProductID" DataNavigateUrlFormatString="productdescription.aspx?ProductID={0}"
															DataTextField="ProductName" NavigateUrl="productdescription.aspx"></asp:HyperLinkColumn>
														<asp:BoundColumn DataField="Description"></asp:BoundColumn>
														<asp:BoundColumn DataField="Model" HeaderText="Model"></asp:BoundColumn>
														<asp:BoundColumn DataField="Price" HeaderText="Price"></asp:BoundColumn>
														<asp:BoundColumn DataField="Image"></asp:BoundColumn>
													</Columns>
													<PagerStyle VerticalAlign="Middle" HorizontalAlign="Center" ForeColor="#4A3C8C" BackColor="#E7E7FF"
														PageButtonCount="5" Mode="NumericPages"></PagerStyle>
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
											<TD style="HEIGHT: 2px" vAlign="bottom" align="center">
												<uc1:mostvisited id="Mostvisited1" runat="server"></uc1:mostvisited></TD>
										</TR>
										<TR>
											<TD vAlign="bottom" align="center"></TD>
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

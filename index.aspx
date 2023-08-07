<%@ Page language="c#" Inherits="OnLineStore.index" CodeFile="index.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="logo" Src="usercontrol/logo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="login" Src="usercontrol/login.ascx" %>
<%@ Register TagPrefix="uc1" TagName="mostvisited" Src="usercontrol/mostvisited.ascx" %>
<%@ Register TagPrefix="uc1" TagName="hotproducts" Src="usercontrol/hotproducts.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ourpolicy" Src="usercontrol/ourpolicy.ascx" %>
<%@ Register TagPrefix="uc1" TagName="search" Src="usercontrol/search.ascx" %>
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
			<TABLE id="Table1" style="FONT-WEIGHT: bold; FONT-SIZE: 9pt; LEFT: 0px; COLOR: black; FONT-FAMILY: Verdana; TOP: 0px"
				height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<TR>
					<TD style="HEIGHT: 129px" height="129" vAlign="middle" align="left">
						<uc1:logo id="Logo1" runat="server"></uc1:logo>
					</TD>
				</TR>
				<tr>
					<td vAlign="middle" align="left" height="30">
						<TABLE id="Table5" style="WIDTH: 144px; HEIGHT: 30px" height="30" cellSpacing="0" cellPadding="0"
							width="144" border="0">
							<TR>
								<TD style="WIDTH: 54px">&nbsp;<asp:hyperlink id="home" runat="server" NavigateUrl="index.aspx" Font-Names="Verdana" Font-Size="9pt"
										Font-Bold="True">Home</asp:hyperlink></TD>
								<TD>&nbsp;&nbsp;
									<asp:hyperlink id="joinnow" runat="server" Font-Names="Verdana" Font-Size="9pt" Font-Bold="True"
										NavigateUrl="joinnow.aspx">Join Now</asp:hyperlink></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<TR>
					<TD><hr color="#999999">
						<TABLE id="Table2" height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
							<TR>
								<TD vAlign="top" align="center" width="25%">
									<TABLE id="Table4" cellSpacing="1" cellPadding="2" width="100%" align="center" border="0">
										<TR>
											<TD align="center" vAlign="top"><uc1:search id="Search1" runat="server"></uc1:search></TD>
										</TR>
										<TR>
											<TD vAlign="bottom" align="center"><uc1:ourpolicy id="Ourpolicy1" runat="server"></uc1:ourpolicy></TD>
										</TR>
										<TR>
											<TD align="center"></TD>
										</TR>
									</TABLE>
								</TD>
								<TD vAlign="top" align="center" width="50%">
									<table cellSpacing="0" cellPadding="0" width="98%">
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
								<TD vAlign="top" width="25%">
									<TABLE id="Table3" cellSpacing="1" cellPadding="2" width="100%" align="center" border="0">
										<TR>
											<TD align="center"><uc1:login id="Login1" runat="server"></uc1:login></TD>
										</TR>
										<TR>
											<TD vAlign="bottom" align="center"><uc1:hotproducts id="Hotproducts1" runat="server"></uc1:hotproducts></TD>
										</TR>
										<TR>
											<TD vAlign="bottom" align="center"><uc1:mostvisited id="Mostvisited1" runat="server"></uc1:mostvisited></TD>
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

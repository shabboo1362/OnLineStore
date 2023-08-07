<%@ Page language="c#" Inherits="OnLineStore.admin" CodeFile="admin.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="logo" Src="uc/logo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="mostvisitedbuy" Src="uc/mostvisitedbuy.ascx" %>
<%@ Register TagPrefix="uc1" TagName="search" Src="uc/search.ascx" %>
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
								<td width="15%" style="WIDTH: 150px">
									<asp:Button id="homecmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="home" CausesValidation="False"></asp:Button>
								</td>
								<TD width="15%" align="center">
									<asp:Button id="requestcmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="Factors" CausesValidation="False" onclick="requestcmd_Click"></asp:Button></TD>
								<TD width="15%" align="center">
									<asp:Button id="addproductcmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="Add product" CausesValidation="False" onclick="addproductcmd_Click"></asp:Button></TD>
								<TD align="center" width="15%">
									<asp:Button id="updatecmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="update" CausesValidation="False" onclick="updatecmd_Click"></asp:Button></TD>
								<TD align="left" width="40%">
									<asp:Button id="productcmd" runat="server" BorderColor="DarkOrange" BackColor="Bisque" Height="30px"
										Text="Product" CausesValidation="False" onclick="productcmd_Click"></asp:Button></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 150px" align="left" width="150">
									<asp:LinkButton id="sigmoutlink" runat="server" onclick="sigmoutlink_Click">Sign Out</asp:LinkButton></TD>
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
											<TD></TD>
										</TR>
										<TR>
											<TD vAlign="top">
												<TABLE id="Table6" cellSpacing="1" cellPadding="1" width="100%" border="0" bgColor="#dedfff">
													<TR>
														<TD width="30%">
															<asp:Label id="cuctomerlbl" runat="server">List of costumers from this date:</asp:Label></TD>
														<TD width="15%">
															<asp:DropDownList id="dayddl" runat="server">
																<asp:ListItem Value="1">1</asp:ListItem>
																<asp:ListItem Value="2">2</asp:ListItem>
																<asp:ListItem Value="3">3</asp:ListItem>
																<asp:ListItem Value="4">4</asp:ListItem>
																<asp:ListItem Value="5">5</asp:ListItem>
																<asp:ListItem Value="6">6</asp:ListItem>
																<asp:ListItem Value="7">7</asp:ListItem>
																<asp:ListItem Value="8">8</asp:ListItem>
																<asp:ListItem Value="9">9</asp:ListItem>
																<asp:ListItem Value="10">10</asp:ListItem>
																<asp:ListItem Value="11">11</asp:ListItem>
																<asp:ListItem Value="12">12</asp:ListItem>
																<asp:ListItem Value="13">13</asp:ListItem>
																<asp:ListItem Value="14">14</asp:ListItem>
																<asp:ListItem Value="15">15</asp:ListItem>
																<asp:ListItem Value="16">16</asp:ListItem>
																<asp:ListItem Value="17">17</asp:ListItem>
																<asp:ListItem Value="18">18</asp:ListItem>
																<asp:ListItem Value="19">19</asp:ListItem>
																<asp:ListItem Value="20">20</asp:ListItem>
																<asp:ListItem Value="21">21</asp:ListItem>
																<asp:ListItem Value="22">22</asp:ListItem>
																<asp:ListItem Value="23">23</asp:ListItem>
																<asp:ListItem Value="24">24</asp:ListItem>
																<asp:ListItem Value="25">25</asp:ListItem>
																<asp:ListItem Value="26">26</asp:ListItem>
																<asp:ListItem Value="27">27</asp:ListItem>
																<asp:ListItem Value="28">28</asp:ListItem>
																<asp:ListItem Value="29">29</asp:ListItem>
																<asp:ListItem Value="30">30</asp:ListItem>
																<asp:ListItem Value="31">31</asp:ListItem>
															</asp:DropDownList></TD>
														<TD width="15%">
															<asp:DropDownList id="monthddl" runat="server">
																<asp:ListItem Value="1">1</asp:ListItem>
																<asp:ListItem Value="2">2</asp:ListItem>
																<asp:ListItem Value="3">3</asp:ListItem>
																<asp:ListItem Value="4">4</asp:ListItem>
																<asp:ListItem Value="5">5</asp:ListItem>
																<asp:ListItem Value="6">6</asp:ListItem>
																<asp:ListItem Value="7">7</asp:ListItem>
																<asp:ListItem Value="8">8</asp:ListItem>
																<asp:ListItem Value="9">9</asp:ListItem>
																<asp:ListItem Value="10">10</asp:ListItem>
																<asp:ListItem Value="11">11</asp:ListItem>
																<asp:ListItem Value="12">12</asp:ListItem>
															</asp:DropDownList></TD>
														<TD width="15%">
															<asp:TextBox id="yeartxt" runat="server"></asp:TextBox></TD>
														<TD width="15%">
															<asp:LinkButton id="customerlink" runat="server" onclick="customerlink_Click">submit</asp:LinkButton>
														</TD>
													</TR>
													<TR>
														<TD width="30%">
															<asp:Label id="sellproductlbl" runat="server">list of sell products from this date:</asp:Label></TD>
														<TD style="WIDTH: 15%">
															<asp:DropDownList id="sdayddl" runat="server">
																<asp:ListItem Value="1">1</asp:ListItem>
																<asp:ListItem Value="2">2</asp:ListItem>
																<asp:ListItem Value="3">3</asp:ListItem>
																<asp:ListItem Value="4">4</asp:ListItem>
																<asp:ListItem Value="5">5</asp:ListItem>
																<asp:ListItem Value="6">6</asp:ListItem>
																<asp:ListItem Value="7">7</asp:ListItem>
																<asp:ListItem Value="8">8</asp:ListItem>
																<asp:ListItem Value="9">9</asp:ListItem>
																<asp:ListItem Value="10">10</asp:ListItem>
																<asp:ListItem Value="11">11</asp:ListItem>
																<asp:ListItem Value="12">12</asp:ListItem>
																<asp:ListItem Value="13">13</asp:ListItem>
																<asp:ListItem Value="14">14</asp:ListItem>
																<asp:ListItem Value="15">15</asp:ListItem>
																<asp:ListItem Value="16">16</asp:ListItem>
																<asp:ListItem Value="17">17</asp:ListItem>
																<asp:ListItem Value="18">18</asp:ListItem>
																<asp:ListItem Value="19">19</asp:ListItem>
																<asp:ListItem Value="20">20</asp:ListItem>
																<asp:ListItem Value="21">21</asp:ListItem>
																<asp:ListItem Value="22">22</asp:ListItem>
																<asp:ListItem Value="23">23</asp:ListItem>
																<asp:ListItem Value="24">24</asp:ListItem>
																<asp:ListItem Value="25">25</asp:ListItem>
																<asp:ListItem Value="26">26</asp:ListItem>
																<asp:ListItem Value="27">27</asp:ListItem>
																<asp:ListItem Value="28">28</asp:ListItem>
																<asp:ListItem Value="29">29</asp:ListItem>
																<asp:ListItem Value="30">30</asp:ListItem>
																<asp:ListItem Value="31">31</asp:ListItem>
															</asp:DropDownList></TD>
														<TD width="15%">
															<asp:DropDownList id="smonthddl" runat="server">
																<asp:ListItem Value="1">1</asp:ListItem>
																<asp:ListItem Value="2">2</asp:ListItem>
																<asp:ListItem Value="3">3</asp:ListItem>
																<asp:ListItem Value="4">4</asp:ListItem>
																<asp:ListItem Value="5">5</asp:ListItem>
																<asp:ListItem Value="6">6</asp:ListItem>
																<asp:ListItem Value="7">7</asp:ListItem>
																<asp:ListItem Value="8">8</asp:ListItem>
																<asp:ListItem Value="9">9</asp:ListItem>
																<asp:ListItem Value="10">10</asp:ListItem>
																<asp:ListItem Value="11">11</asp:ListItem>
																<asp:ListItem Value="12">12</asp:ListItem>
																<asp:ListItem Value="13">13</asp:ListItem>
																<asp:ListItem Value="14">14</asp:ListItem>
																<asp:ListItem Value="15">15</asp:ListItem>
																<asp:ListItem Value="16">16</asp:ListItem>
																<asp:ListItem Value="17">17</asp:ListItem>
																<asp:ListItem Value="18">18</asp:ListItem>
																<asp:ListItem Value="19">19</asp:ListItem>
																<asp:ListItem Value="20">20</asp:ListItem>
																<asp:ListItem Value="21">21</asp:ListItem>
																<asp:ListItem Value="22">22</asp:ListItem>
																<asp:ListItem Value="23">23</asp:ListItem>
																<asp:ListItem Value="24">24</asp:ListItem>
																<asp:ListItem Value="25">25</asp:ListItem>
																<asp:ListItem Value="26">26</asp:ListItem>
																<asp:ListItem Value="27">27</asp:ListItem>
																<asp:ListItem Value="28">28</asp:ListItem>
																<asp:ListItem Value="29">29</asp:ListItem>
																<asp:ListItem Value="30">30</asp:ListItem>
																<asp:ListItem Value="31">31</asp:ListItem>
															</asp:DropDownList></TD>
														<TD width="30%">
															<asp:TextBox id="syeartxt" runat="server"></asp:TextBox></TD>
														<TD width="15%">
															<asp:LinkButton id="sellproductlink" runat="server" onclick="sellproductlink_Click">submit</asp:LinkButton>
														</TD>
													</TR>
													<TR>
														<TD width="25%"></TD>
														<TD style="WIDTH: 15%"></TD>
														<TD width="15%"></TD>
														<TD width="30%">
															<asp:Label id="errorlbl" runat="server" Visible="False" ForeColor="Red"> please inter year</asp:Label></TD>
														<TD width="30%"></TD>
													</TR>
												</TABLE>
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

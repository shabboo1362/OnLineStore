<%@ Page language="c#" Inherits="OnLineStore.Admin.updateproduct" CodeFile="updateproduct.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="logo" Src="uc/logo.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>updateproduct</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		</EMBED>&nbsp;
		<form id="Form1" runat="server">
			<table id="table0" height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td width="100%">
						<uc1:logo id="Logo1" runat="server"></uc1:logo></td>
				</tr>
				<TR>
					<TD align="left" width="100%">
						<TABLE id="Table2" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
							<TR width="100%">
								<TD width="212" style="WIDTH: 212px">
									<asp:Button id="homecmd" runat="server" Text="home" BackColor="Bisque" Height="30px" BorderColor="DarkOrange"
										CausesValidation="False" onclick="homecmd_Click"></asp:Button></TD>
								<TD align="center" width="15%">
									<asp:Button id="factorscmd" runat="server" Text="Factors" BackColor="Bisque" Height="30px" BorderColor="DarkOrange"
										CausesValidation="False" onclick="factorscmd_Click"></asp:Button></TD>
								<TD align="center" width="15%">
									<asp:Button id="addproductcmd" runat="server" Text="Add product" BackColor="Bisque" Height="30px"
										BorderColor="DarkOrange" CausesValidation="False" onclick="addproductcmd_Click"></asp:Button></TD>
								<TD align="center" width="15%">
									<asp:Button id="updatecmd" runat="server" Text="update" BackColor="Bisque" Height="30px" BorderColor="DarkOrange"
										CausesValidation="False" onclick="updatecmd_Click"></asp:Button></TD>
								<TD align="left" width="40%">
									<asp:Button id="productcmd" runat="server" CausesValidation="False" BorderColor="DarkOrange"
										Height="30px" BackColor="Bisque" Text="Product" onclick="productcmd_Click"></asp:Button></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 212px" align="left" width="212">
									<asp:LinkButton id="sigmoutlink" runat="server">Sign Out</asp:LinkButton></TD>
								<TD align="left" width="15%"></TD>
								<TD align="center" width="15%"></TD>
								<TD align="center" width="15%"></TD>
								<TD align="center" width="15%"></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<tr width="100%">
					<td vAlign="top" width="100%">
						<table id="table1" cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr width="100%">
								<td align="center" width="80%" valign="top">
									<TABLE id="Table7" cellSpacing="0" cellPadding="0" width="100%" bgColor="#e8e4fd" border="0"
										height="100%" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">
										<TR width="100%">
											<TD width="100%">
												<asp:ValidationSummary id="ValidationSummary1" runat="server"></asp:ValidationSummary></TD>
										</TR>
										<TR width="100%">
											<TD vAlign="top" align="center" width="100%" bgColor="#e8e4fd">
												<TABLE id="Table3" cellSpacing="0" cellPadding="0" width="100%" border="1" borderColor="#e8e4fd"
													bgColor="#e8e4fd">
													<TR width="100%">
														<TD width="13%" borderColor="#e8e4fd"></TD>
														<TD width="60%" borderColor="#e8e4fd"></TD>
														<td width="27%" bordercolor="#e8e4fd">
														</td>
													</TR>
													<TR width="100%">
														<TD width="13%" vAlign="middle" align="left">&nbsp;
															<asp:label id="productnamelbl" runat="server" Width="97px" Font-Size="12px" Font-Names="Verdana">Product Name</asp:label></TD>
														<TD width="60%" align="left"><asp:textbox id="productnametxt" runat="server" Width="130px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																BorderWidth="1px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" Font-Size="12px" Font-Names="Verdana"
																EnableViewState="False" ControlToValidate="productnametxt" ErrorMessage="Enter your product name">*</asp:requiredfieldvalidator></TD>
														<td width="27%" align="left">
														</td>
													</TR>
													<TR width="100%">
														<TD width="13%" vAlign="middle">&nbsp;
															<asp:label id="modellbl" runat="server" Font-Size="12px" Font-Names="Verdana">Model</asp:label></TD>
														<TD width="60%"><asp:textbox id="modeltxt" runat="server" Width="130px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																BorderWidth="1px"></asp:textbox></TD>
														<td width="27%" style="BORDER-TOP: #eef4ec thin; BORDER-LEFT: #eef4ec thin; BORDER-BOTTOM: #eef4ec thin; BORDER-RIGHT-STYLE: none">
														</td>
													</TR>
													<TR width="100%">
														<TD width="13%">&nbsp;&nbsp;
															<asp:label id="pricelbl" runat="server" Font-Size="12px" Font-Names="Verdana">Price</asp:label></TD>
														<TD width="60%"><asp:textbox id="pricetxt" runat="server" Width="130px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																BorderWidth="1px"></asp:textbox>
															<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="please inter price" EnableViewState="False"
																ControlToValidate="pricetxt">*</asp:RequiredFieldValidator></TD>
														<td width="27%">
														</td>
													</TR>
													<TR width="100%">
														<TD width="13%">
															<asp:label id="quntity" runat="server" Font-Size="12px" Font-Names="Verdana">Quntity</asp:label></TD>
														<TD width="60%"><asp:textbox id="quntitytxt" runat="server" Width="130px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																BorderWidth="1px"></asp:textbox>
															<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a quantity"
																ControlToValidate="quntitytxt" EnableViewState="False">*</asp:RequiredFieldValidator></TD>
														<td width="27%">
														</td>
													</TR>
													<TR width="100%">
														<TD width="13%">&nbsp;
															<asp:label id="weightlbl" runat="server" Font-Size="12px" Font-Names="Verdana">Weight</asp:label></TD>
														<TD width="60%"><asp:textbox id="weightxt" runat="server" Width="130px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																BorderWidth="1px"></asp:textbox></TD>
														<td width="27%">
														</td>
													</TR>
													<TR width="100%">
														<TD width="13%" vAlign="top" align="left">
															<asp:label id="descriptionlbl" runat="server" Font-Size="12px" Font-Names="Verdana">Description</asp:label></TD>
														<TD width="60%" vAlign="top"><asp:textbox id="descriptiontxt" runat="server" BorderColor="LightSteelBlue" BorderStyle="Solid"
																BorderWidth="1px" TextMode="MultiLine" Height="60px"></asp:textbox></TD>
														<td width="27%" style="BORDER-TOP: #eef4ec thin; BORDER-LEFT: #eef4ec thin; BORDER-BOTTOM: #eef4ec thin; BORDER-RIGHT-STYLE: none"
															valign="top">
														</td>
													</TR>
													<TR width="100%">
														<TD width="13%" height="25" align="left"></TD>
														<TD width="60%" height="25"></TD>
														<td width="27%" height="25">
														</td>
													</TR>
												</TABLE>
											</TD>
										</TR>
										<TR width="100%">
											<TD width="100%" align="left"></TD>
										</TR>
									</TABLE>
									<TABLE id="Table4" cellSpacing="0" cellPadding="0" width="50%" border="0">
										<TR width="100%">
											<TD align="center" width="50%">
												<asp:Button id="update1cmd" runat="server" Width="62px" BorderColor="SteelBlue" BackColor="Lavender"
													Text="update" onclick="update1cmd_Click"></asp:Button></TD>
											<TD align="center" width="50%">
												<asp:Button id="deletecmd" runat="server" BorderColor="SteelBlue" BackColor="Lavender" Text="Delete" onclick="deletecmd_Click"></asp:Button></TD>
											<TD align="center" width="50%">
												<asp:Button id="cancelcmd" runat="server" BorderColor="SteelBlue" BackColor="Lavender" Text="Cancel"></asp:Button></TD>
										</TR>
									</TABLE>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr width="100%">
					<td width="100%" colSpan="2"><a href=""></a><a href=""></a><a href=""></a><a href=""></a><a href=""></a></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>

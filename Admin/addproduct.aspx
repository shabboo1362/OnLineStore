<%@ Register TagPrefix="uc1" TagName="logo" Src="uc/logo.ascx" %>
<%@ Page language="c#" Inherits="OnLineStore.Admin.addproduct" CodeFile="addproduct.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Import Export</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" runat="server">
			<table id="table0" height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td width="100%"><uc1:logo id="Logo1" runat="server"></uc1:logo></td>
				</tr>
				<TR>
					<TD align="left" width="100%">
						<TABLE id="Table2" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
							<TR width="100%">
								<TD style="WIDTH: 212px" width="212"><asp:button id="homecmd" runat="server" CausesValidation="False" BorderColor="DarkOrange" Height="30px"
										BackColor="Bisque" Text="home" onclick="homecmd_Click"></asp:button></TD>
								<TD align="center" width="15%"><asp:button id="factorscmd" runat="server" CausesValidation="False" BorderColor="DarkOrange"
										Height="30px" BackColor="Bisque" Text="Factors" onclick="factorscmd_Click"></asp:button></TD>
								<TD align="center" width="15%"><asp:button id="addproductcmd" runat="server" CausesValidation="False" BorderColor="DarkOrange"
										Height="30px" BackColor="Bisque" Text="Add product" onclick="addproductcmd_Click"></asp:button></TD>
								<TD align="center" width="15%"><asp:button id="updatecmd" runat="server" CausesValidation="False" BorderColor="DarkOrange"
										Height="30px" BackColor="Bisque" Text="update" onclick="updatecmd_Click"></asp:button></TD>
								<TD align="left" width="40%"><asp:button id="productcmd" runat="server" CausesValidation="False" BorderColor="DarkOrange"
										Height="30px" BackColor="Bisque" Text="Product" onclick="productcmd_Click"></asp:button></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 212px" align="left" width="212"><asp:linkbutton id="sigmoutlink" runat="server" onclick="sigmoutlink_Click">Sign Out</asp:linkbutton></TD>
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
								<td vAlign="top" align="center" width="80%">
									<TABLE id="Table7" height="100%" cellSpacing="0" cellPadding="0" width="100%" bgColor="#eef4ec"
										border="0">
										<TR width="100%">
											<TD style="BORDER-TOP-STYLE: none; BORDER-BOTTOM: #eef4ec thin solid; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none"
												width="100%"><asp:validationsummary id="ValidationSummary1" runat="server"></asp:validationsummary></TD>
										</TR>
										<TR width="100%">
											<TD style="FONT-WEIGHT: bold; FONT-FAMILY: 'Times New Roman'" vAlign="top" align="center"
												width="100%" bgColor="#eef4ec">
												<TABLE id="Table3" style="BORDER-BOTTOM: #eef4ec thin solid" cellSpacing="0" cellPadding="0"
													width="100%" border="0">
													<TR width="100%">
														<TD style="BORDER-RIGHT: #eef4ec thin solid; BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid; HEIGHT: 17px"
															borderColor="#eef4ec" width="13%"></TD>
														<TD style="BORDER-RIGHT: #eef4ec thin solid; BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid; HEIGHT: 17px"
															borderColor="#eef4ec" width="60%"></TD>
														<td style="BORDER-RIGHT: #eef4ec thin solid; BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid; HEIGHT: 17px"
															borderColor="#eef4ec" width="27%"></td>
													</TR>
													<TR width="100%">
														<TD style="BORDER-RIGHT: #eef4ec thin solid; BORDER-TOP: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															vAlign="middle" align="left" width="13%">&nbsp;
															<asp:label id="productnamelbl" runat="server" Width="97px" Font-Names="Verdana" Font-Size="12px">Product Name</asp:label></TD>
														<TD style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															align="left" width="60%"><asp:textbox id="productnametxt" runat="server" Width="130px" BorderColor="LightSteelBlue" BorderWidth="1px"
																BorderStyle="Solid"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" Font-Names="Verdana" Font-Size="12px"
																ErrorMessage="Enter your product name" ControlToValidate="productnametxt" EnableViewState="False">*</asp:requiredfieldvalidator></TD>
														<td style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															align="left" width="27%"></td>
													</TR>
													<TR>
														<TD style="BORDER-RIGHT: #eef4ec thin solid; BORDER-TOP: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid; HEIGHT: 37px"
															align="left" width="13%"><asp:label id="Label1" runat="server" Font-Names="Verdana" Font-Size="12px">Category Name</asp:label></TD>
														<TD style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															align="left" width="60%" height="50"><asp:dropdownlist id="categoryddl" runat="server" Width="128px"></asp:dropdownlist></TD>
														<TD style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid; HEIGHT: 37px"
															width="27%"></TD>
													</TR>
													<tr width="100%">
														<td style="BORDER-RIGHT: #eef4ec thin solid; BORDER-TOP: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid; HEIGHT: 37px"
															align="left" width="13%" height="37"></td>
														<td style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid; HEIGHT: 37px"
															width="60%" height="37"></td>
														<td style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid; HEIGHT: 37px"
															width="27%" height="37"></td>
													</tr>
													<TR width="100%">
														<TD style="BORDER-RIGHT: #eef4ec thin solid; BORDER-TOP: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															vAlign="middle" width="13%">&nbsp;
															<asp:label id="modellbl" runat="server" Font-Names="Verdana" Font-Size="12px">Model</asp:label></TD>
														<TD style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															width="60%"><asp:textbox id="modeltxt" runat="server" Width="130px" BorderColor="LightSteelBlue" BorderWidth="1px"
																BorderStyle="Solid"></asp:textbox></TD>
														<td style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															width="27%"></td>
													</TR>
													<TR width="100%">
														<TD style="BORDER-RIGHT: #eef4ec thin solid; BORDER-TOP: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															width="13%">&nbsp;&nbsp;
															<asp:label id="pricelbl" runat="server" Font-Names="Verdana" Font-Size="12px">Price</asp:label></TD>
														<TD style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															width="60%"><asp:textbox id="pricetxt" runat="server" Width="130px" BorderColor="LightSteelBlue" BorderWidth="1px"
																BorderStyle="Solid"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ErrorMessage="please inter price" ControlToValidate="pricetxt"
																EnableViewState="False">*</asp:requiredfieldvalidator></TD>
														<td style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															width="27%"></td>
													</TR>
													<TR width="100%">
														<TD style="BORDER-RIGHT: #eef4ec thin solid; BORDER-TOP: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid; HEIGHT: 26px"
															width="13%"><asp:label id="quntity" runat="server" Font-Names="Verdana" Font-Size="12px">Quntity</asp:label></TD>
														<TD style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid; HEIGHT: 26px"
															width="60%"><asp:textbox id="quntitytxt" runat="server" Width="130px" BorderColor="LightSteelBlue" BorderWidth="1px"
																BorderStyle="Solid"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a quantity"
																ControlToValidate="quntitytxt" EnableViewState="False">*</asp:requiredfieldvalidator></TD>
														<td style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid; HEIGHT: 26px"
															width="27%"></td>
													</TR>
													<TR width="100%">
														<TD style="BORDER-RIGHT: #eef4ec thin solid; BORDER-TOP: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															width="13%">&nbsp;
															<asp:label id="weightlbl" runat="server" Font-Names="Verdana" Font-Size="12px">Weight</asp:label></TD>
														<TD style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															width="60%"><asp:textbox id="weightxt" runat="server" Width="130px" BorderColor="LightSteelBlue" BorderWidth="1px"
																BorderStyle="Solid"></asp:textbox></TD>
														<td style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															width="27%"></td>
													</TR>
													<TR width="100%">
														<TD style="BORDER-RIGHT: #eef4ec thin solid; BORDER-TOP: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															vAlign="top" align="left" width="13%"><asp:label id="descriptionlbl" runat="server" Font-Names="Verdana" Font-Size="12px">Description</asp:label></TD>
														<TD style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															vAlign="top" width="60%"><asp:textbox id="descriptiontxt" runat="server" BorderColor="LightSteelBlue" Height="60px" BorderWidth="1px"
																BorderStyle="Solid" TextMode="MultiLine"></asp:textbox></TD>
														<td style="BORDER-TOP: #eef4ec thin solid; BORDER-LEFT: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
															vAlign="top" width="27%"></td>
													</TR>
													<TR width="100%">
														<TD align="left" width="13%" height="25"></TD>
														<TD width="60%" height="25"></TD>
														<td width="27%" height="25"></td>
													</TR>
												</TABLE>
											</TD>
										</TR>
										<TR width="100%">
											<TD style="BORDER-RIGHT: #eef4ec thin solid; BORDER-TOP: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid"
												align="left" width="100%"></TD>
										</TR>
										<tr width="100%">
											<td align="center" width="100%">
												<TABLE id="Table4" cellSpacing="0" cellPadding="0" width="50%" border="0">
													<TR width="100%">
														<TD align="center" width="50%"><asp:button id="cancelcmd" runat="server" BackColor="DarkSeaGreen" Text="Cancel" onclick="cancelcmd_Click"></asp:button></TD>
														<TD align="center" width="50%"><asp:button id="addcmd" runat="server" Width="62px" BackColor="DarkSeaGreen" Text="Add" onclick="addcmd_Click"></asp:button></TD>
													</TR>
												</TABLE>
											</td>
										</tr>
										<tr width="100%">
											<td align="center" width="100%" height="30%"></td>
										</tr>
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

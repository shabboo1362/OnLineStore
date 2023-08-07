<%@ Reference Page="~/error.aspx" %>
<%@ Page language="c#" Inherits="OnLineStore.Migrated_update" CodeFile="update.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="logo" Src="usercontrol/logo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="hotproducts" Src="usercontrol/hotproducts.ascx" %>
<%@ Register TagPrefix="uc1" TagName="mostvisited" Src="usercontrol/mostvisited.ascx" %>
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
					<TD height="125">
						<uc1:logo id="Logo1" runat="server"></uc1:logo></TD>
				</TR>
				<TR>
					<TD vAlign="top" width="100%" height="25">&nbsp;
						<TABLE id="Table5" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
							<TR>
								<TD width="10%">
									<asp:HyperLink id="homelink" runat="server" NavigateUrl="welcome.aspx">Home</asp:HyperLink></TD>
								<TD width="10%">
									<asp:LinkButton id="signoutlink" runat="server" onclick="signoutlink_Click">Sign Out</asp:LinkButton></TD>
								<TD width="80%"></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD>
						<HR color="#999999">
						<TABLE id="Table2" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="1">
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
								<td vAlign="top" width="60%">
									<table id="table1" cellSpacing="0" cellPadding="0" width="100%" border="0">
										<tr>
											<td height="33">
												<asp:Label id="Label2" runat="server" ForeColor="Black" Font-Underline="True" Font-Bold="True">Edit User Information</asp:Label></td>
										</tr>
										<tr>
											<td>
												<TABLE id="Table7" borderColor="#f1e2ff" cellSpacing="0" cellPadding="0" width="100%" border="1">
													<TR>
														<TD style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none"
															bgColor="#e8e4fd"><asp:validationsummary id="ValidationSummary1" runat="server"></asp:validationsummary></TD>
													</TR>
													<TR>
														<TD style="FONT-WEIGHT: bold; FONT-FAMILY: 'Times New Roman'" vAlign="top" align="center"
															width="800" bgColor="#e8e4fd">
															<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="100%" border="0" bgColor="#e8e4fd">
																<TR>
																	<TD style="WIDTH: 119px" align="left"><asp:label id="usernamelbl" runat="server" Font-Size="12px" Font-Names="Verdana">UserName</asp:label></TD>
																	<TD><asp:textbox id="usernametxt" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="LightSteelBlue"
																			Width="120px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" EnableViewState="False" ControlToValidate="usernametxt"
																			ErrorMessage="Enter username">*</asp:requiredfieldvalidator>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																		<asp:label id="usererror" runat="server" ForeColor="Red" Visible="False">please enter another Username</asp:label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
																</TR>
																<TR>
																	<TD style="WIDTH: 119px; HEIGHT: 24px" align="left"><asp:label id="oldpasswordlbl" runat="server" Font-Size="12px" Font-Names="Verdana">Old Password</asp:label></TD>
																	<TD><asp:textbox id="oldpasstxt" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="LightSteelBlue"
																			Width="120px" TextMode="Password"></asp:textbox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																		<asp:label id="error" runat="server" ForeColor="Red" Visible="False">Your password is not available</asp:label></TD>
																</TR>
																<TR>
																	<TD style="WIDTH: 119px; HEIGHT: 24px" align="left"><asp:label id="Label3" runat="server" Font-Size="12px" Font-Names="Verdana">New Password</asp:label></TD>
																	<TD><asp:textbox id="passwordtxt" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="LightSteelBlue"
																			Width="120px" TextMode="Password"></asp:textbox><asp:label id="Label1" runat="server"></asp:label></TD>
																</TR>
																<TR>
																	<TD width="150"><asp:label id="confirmpasswordlbl" runat="server" Font-Size="12px" Font-Names="Verdana">Confirm Password</asp:label></TD>
																	<TD><asp:textbox id="confirmpasswordtxt" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="LightSteelBlue"
																			Width="120px" TextMode="Password"></asp:textbox>&nbsp;&nbsp;
																		<asp:comparevalidator id="CompareValidator1" runat="server" ControlToValidate="confirmpasswordtxt" ErrorMessage="Confirm new password shoud be like your new password "
																			ControlToCompare="passwordtxt">*</asp:comparevalidator>&nbsp;&nbsp;&nbsp;</TD>
																</TR>
																<TR>
																	<TD style="WIDTH: 119px; HEIGHT: 23px"></TD>
																	<TD style="HEIGHT: 23px"></TD>
																</TR>
																<TR>
																	<TD style="WIDTH: 119px" align="left"><asp:label id="emaillbl" runat="server" Font-Size="12px" Font-Names="Verdana">Email</asp:label></TD>
																	<TD><asp:textbox id="emailtxt" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="LightSteelBlue"
																			Width="160px"></asp:textbox></TD>
																</TR>
																<TR>
																	<TD style="WIDTH: 119px; HEIGHT: 21px" align="left"><asp:label id="firstname" runat="server" Font-Size="12px" Font-Names="Verdana">FirstName</asp:label></TD>
																	<TD style="HEIGHT: 21px"><asp:textbox id="nametxt" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="LightSteelBlue"
																			Width="120px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" EnableViewState="False" ControlToValidate="nametxt"
																			ErrorMessage="Enter firstname">*</asp:requiredfieldvalidator></TD>
																</TR>
																<TR>
																	<TD align="left" width="70"><asp:label id="lastnamelbl" runat="server" Font-Size="12px" Font-Names="Verdana">Last Name</asp:label></TD>
																	<TD><asp:textbox id="lastnametxt" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="LightSteelBlue"
																			Width="120px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" EnableViewState="False" ControlToValidate="lastnametxt"
																			ErrorMessage="Enter lastname">*</asp:requiredfieldvalidator></TD>
																</TR>
																<TR>
																	<TD style="WIDTH: 119px; HEIGHT: 23px"></TD>
																	<TD style="HEIGHT: 23px"></TD>
																</TR>
																<TR>
																	<TD style="WIDTH: 119px" align="left"><asp:label id="statelbl" runat="server" Font-Size="12px" Font-Names="Verdana">State</asp:label></TD>
																	<TD><asp:textbox id="statetxt" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="LightSteelBlue"
																			Width="120px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator7" runat="server" EnableViewState="False" ControlToValidate="statetxt"
																			ErrorMessage="Enter state">*</asp:requiredfieldvalidator></TD>
																</TR>
																<TR>
																	<TD style="WIDTH: 119px" align="left"><asp:label id="citylbl" runat="server" Font-Size="12px" Font-Names="Verdana">City</asp:label></TD>
																	<TD><asp:textbox id="citytxt" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="LightSteelBlue"
																			Width="120px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator8" runat="server" EnableViewState="False" ControlToValidate="citytxt"
																			ErrorMessage="Enter city">*</asp:requiredfieldvalidator></TD>
																</TR>
																<TR>
																	<TD align="left"><asp:label id="postalcodelbl" runat="server" Font-Size="12px" Font-Names="Verdana">PostalCode</asp:label></TD>
																	<TD><asp:textbox id="postalcodetxt" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="LightSteelBlue"
																			Width="120px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator9" runat="server" EnableViewState="False" ControlToValidate="postalcodetxt"
																			ErrorMessage="Enter postalcode">*</asp:requiredfieldvalidator></TD>
																</TR>
																<TR>
																	<TD align="left" width="70"><asp:label id="addresslbl" runat="server" Font-Size="12px" Font-Names="Verdana">Address</asp:label></TD>
																	<TD><asp:textbox id="addresstxt" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="LightSteelBlue"
																			Width="160px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator10" runat="server" EnableViewState="False" ControlToValidate="addresstxt"
																			ErrorMessage="Enter address">*</asp:requiredfieldvalidator></TD>
																</TR>
																<TR>
																	<TD align="left" width="70"><asp:label id="tellbl" runat="server" Font-Size="12px" Font-Names="Verdana">Tel</asp:label></TD>
																	<TD><asp:textbox id="teltxt" runat="server" BorderWidth="1px" BorderStyle="Solid" BorderColor="LightSteelBlue"
																			Width="120px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator11" runat="server" EnableViewState="False" ControlToValidate="addresstxt"
																			ErrorMessage="Enter tel">*</asp:requiredfieldvalidator></TD>
																</TR>
																<TR>
																	<TD style="HEIGHT: 25px" align="left" width="70"></TD>
																	<TD style="HEIGHT: 25px"></TD>
																</TR>
															</TABLE>
														</TD>
													</TR>
												</TABLE>
											</td>
										</tr>
										<tr>
											<td align="center">
												<TABLE id="Table3" cellSpacing="0" cellPadding="0" width="400" border="0">
													<TR>
														<TD>
															<asp:Button id="updatecmd" runat="server" BorderColor="SteelBlue" Text="Submit" BackColor="Lavender" onclick="submitcmd_Click"></asp:Button></TD>
														<TD>
															<asp:Button id="cancelcmd" runat="server" BorderColor="SteelBlue" CausesValidation="False" Text="Cancel"
																BackColor="Lavender" onclick="cancelcmd_Click"></asp:Button></TD>
													</TR>
												</TABLE>
											</td>
										</tr>
									</table>
								</td>
								<TD width="20%" vAlign="top">
									<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="100%" border="0">
										<TR>
											<TD>
												<uc1:mostvisited id="Mostvisited1" runat="server"></uc1:mostvisited>
											</TD>
										</TR>
										<TR>
											<TD>
												<uc1:hotproducts id="Hotproducts1" runat="server"></uc1:hotproducts>
											</TD>
										</TR>
										<TR>
											<TD></TD>
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

<%@ Register TagPrefix="uc1" TagName="OurPolicy" Src="usercontrol/OurPolicy.ascx" %>
<%@ Register TagPrefix="uc1" TagName="search" Src="usercontrol/search.ascx" %>
<%@ Register TagPrefix="uc1" TagName="hotproducts" Src="usercontrol/hotproducts.ascx" %>
<%@ Register TagPrefix="uc1" TagName="mostvisited" Src="usercontrol/mostvisited.ascx" %>
<%@ Page language="c#" Inherits="OnLineStore.register" CodeFile="register.aspx.cs" %>
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
			<TABLE id="Table1" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="1">
				<TR>
					<TD height="125">
						<uc1:logo id="Logo1" runat="server"></uc1:logo></TD>
				</TR>
				<TR>
					<TD width="100%" height="25">
						<TABLE id="Table5" cellSpacing="1" cellPadding="1" width="100%" border="1">
							<TR>
								<TD align="left">
									<asp:HyperLink id="homelink" runat="server" NavigateUrl="index.aspx">Home</asp:HyperLink></TD>
								<TD></TD>
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
									<TABLE id="Table4" cellSpacing="1" cellPadding="1" width="100%" border="1">
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
									<TABLE id="table0" height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
										<TR>
											<TD vAlign="top" width="100%">
												<TABLE id="table1" cellSpacing="0" cellPadding="0" width="100%" border="0">
													<TR>
														<TD height="32" style="HEIGHT: 32px">
															<asp:Label id="Label2" runat="server" ForeColor="Black" Font-Underline="True" Font-Bold="True">Join OnLineStore.com</asp:Label></TD>
													</TR>
													<TR>
														<TD>
															<TABLE id="Table3" style="HEIGHT: 136px" borderColor="#f1e2ff" cellSpacing="0" cellPadding="0"
																width="100%" align="center" border="1" bgColor="#e8e4fd">
																<TR>
																	<TD style="BORDER-TOP-STYLE: none; BORDER-BOTTOM: #f1e2ff thin solid; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none"
																		bgColor="#e8e4fd"><asp:validationsummary id="ValidationSummary1" runat="server"></asp:validationsummary></TD>
																</TR>
																<TR>
																	<TD style="BORDER-TOP: #f1e2ff thin solid; BORDER-BOTTOM: #f1e2ff thin solid" bgColor="#e8e4fd"></TD>
																</TR>
																<TR>
																	<TD style="FONT-WEIGHT: bold; FONT-FAMILY: 'Times New Roman'" vAlign="top" align="center"
																		width="800" bgColor="#e8e4fd">
																		<TABLE id="Table2" cellSpacing="0" cellPadding="0" width="100%" border="0" bgColor="#e8e4fd">
																			<TR>
																				<TD style="WIDTH: 119px" align="left" bgColor="#e8e4fd"><asp:label id="firstname" runat="server" Font-Size="12px" Font-Names="Verdana">FirstName</asp:label></TD>
																				<TD bgColor="#e8e4fd"><asp:textbox id="nametxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																						BorderWidth="1px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" ControlToValidate="nametxt" ErrorMessage="Enter firstname"
																						EnableViewState="False">*</asp:requiredfieldvalidator></TD>
																			</TR>
																			<TR>
																				<TD style="WIDTH: 119px; HEIGHT: 24px" align="left" bgColor="#e8e4fd"><asp:label id="lastnamelbl" runat="server" Font-Size="12px" Font-Names="Verdana">Last Name</asp:label></TD>
																				<TD bgColor="#e8e4fd"><asp:textbox id="lastnametxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																						BorderWidth="1px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" ControlToValidate="lastnametxt" ErrorMessage="Enter lastname"
																						EnableViewState="False">*</asp:requiredfieldvalidator></TD>
																			</TR>
																			<TR>
																				<TD style="WIDTH: 119px; HEIGHT: 23px" bgColor="#e8e4fd"><asp:label id="usernamelbl" runat="server" Font-Size="12px" Font-Names="Verdana">UserName</asp:label></TD>
																				<TD style="HEIGHT: 23px" bgColor="#e8e4fd"><asp:textbox id="usernametxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																						BorderWidth="1px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ControlToValidate="usernametxt" ErrorMessage="Enter username"
																						EnableViewState="False">*</asp:requiredfieldvalidator><asp:label id="usererror" runat="server" ForeColor="Red" Visible="False">please enter another Username</asp:label></TD>
																			</TR>
																			<TR>
																				<TD style="WIDTH: 119px" align="left" bgColor="#e8e4fd"><asp:label id="passwordlbl" runat="server" Font-Size="12px" Font-Names="Verdana">Password</asp:label></TD>
																				<TD bgColor="#e8e4fd"><asp:textbox id="passwordtxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																						BorderWidth="1px" TextMode="Password"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ControlToValidate="passwordtxt" ErrorMessage="Enter password"
																						EnableViewState="False">*</asp:requiredfieldvalidator></TD>
																			</TR>
																			<TR>
																				<TD style="WIDTH: 119px" align="left" bgColor="#e8e4fd"><asp:label id="confirmpasswordlbl" runat="server" Font-Size="12px" Font-Names="Verdana">Confirm Password</asp:label></TD>
																				<TD bgColor="#e8e4fd"><asp:textbox id="confirmpasswordtxt" runat="server" Width="120px" BorderColor="LightSteelBlue"
																						BorderStyle="Solid" BorderWidth="1px" TextMode="Password"></asp:textbox><asp:comparevalidator id="CompareValidator1" runat="server" ControlToValidate="confirmpasswordtxt" ErrorMessage="Invalid password"
																						EnableViewState="False" ControlToCompare="passwordtxt">*</asp:comparevalidator><asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" ControlToValidate="confirmpasswordtxt"
																						ErrorMessage="Confirm password" EnableViewState="False">*</asp:requiredfieldvalidator></TD>
																			</TR>
																			<TR>
																				<TD align="left" width="70" bgColor="#e8e4fd"><asp:label id="emaillbl" runat="server" Font-Size="12px" Font-Names="Verdana">Email</asp:label></TD>
																				<TD bgColor="#e8e4fd"><asp:textbox id="emailtxt" runat="server" Width="160px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																						BorderWidth="1px"></asp:textbox><asp:regularexpressionvalidator id="RegularExpressionValidator1" runat="server" ControlToValidate="emailtxt" ErrorMessage="Email invalid"
																						EnableViewState="False" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:regularexpressionvalidator></TD>
																			</TR>
																			<TR>
																				<TD style="WIDTH: 119px; HEIGHT: 23px" bgColor="#e8e4fd"></TD>
																				<TD style="HEIGHT: 23px" bgColor="#e8e4fd"></TD>
																			</TR>
																			<TR>
																				<TD style="WIDTH: 119px" align="left" bgColor="#e8e4fd"><asp:label id="Label1" runat="server" Font-Size="12px" Font-Names="Verdana">State</asp:label></TD>
																				<TD bgColor="#e8e4fd"><asp:textbox id="statetxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																						BorderWidth="1px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator7" runat="server" ControlToValidate="statetxt" ErrorMessage="Enter state"
																						EnableViewState="False">*</asp:requiredfieldvalidator></TD>
																			</TR>
																			<TR>
																				<TD style="WIDTH: 119px" align="left" bgColor="#e8e4fd"><asp:label id="citylbl" runat="server" Font-Size="12px" Font-Names="Verdana">City</asp:label></TD>
																				<TD bgColor="#e8e4fd"><asp:textbox id="citytxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																						BorderWidth="1px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator8" runat="server" ControlToValidate="citytxt" ErrorMessage="Enter city"
																						EnableViewState="False">*</asp:requiredfieldvalidator></TD>
																			</TR>
																			<TR>
																				<TD align="left" bgColor="#e8e4fd"><asp:label id="postalcodelbl" runat="server" Font-Size="12px" Font-Names="Verdana">PostalCode</asp:label></TD>
																				<TD bgColor="#e8e4fd"><asp:textbox id="postalcodetxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																						BorderWidth="1px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator9" runat="server" ControlToValidate="postalcodetxt" ErrorMessage="Enter postalcode"
																						EnableViewState="False">*</asp:requiredfieldvalidator></TD>
																			</TR>
																			<TR>
																				<TD align="left" width="70" bgColor="#e8e4fd"><asp:label id="addresslbl" runat="server" Font-Size="12px" Font-Names="Verdana">Address</asp:label></TD>
																				<TD bgColor="#e8e4fd"><asp:textbox id="addresstxt" runat="server" Width="160px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																						BorderWidth="1px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator10" runat="server" ControlToValidate="addresstxt" ErrorMessage="Enter address"
																						EnableViewState="False">*</asp:requiredfieldvalidator></TD>
																			</TR>
																			<TR>
																				<TD align="left" width="70" bgColor="#e8e4fd"><asp:label id="tellbl" runat="server" Font-Size="12px" Font-Names="Verdana">Tel</asp:label></TD>
																				<TD bgColor="#e8e4fd"><asp:textbox id="teltxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderStyle="Solid"
																						BorderWidth="1px"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator11" runat="server" ControlToValidate="addresstxt" ErrorMessage="Enter tel"
																						EnableViewState="False">*</asp:requiredfieldvalidator></TD>
																			</TR>
																			<TR>
																				<TD align="center" width="70" bgColor="#e8e4fd"></TD>
																				<TD align="left" bgColor="#e8e4fd"></TD>
																			</TR>
																			<TR>
																				<TD align="center" width="70" bgColor="#e8e4fd"></TD>
																				<TD align="center" bgColor="#e8e4fd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																				</TD>
																			</TR>
																		</TABLE>
																	</TD>
																</TR>
															</TABLE>
														</TD>
													</TR>
													<TR>
														<TD align="center">
															<TABLE id="Table4" cellSpacing="0" cellPadding="0" width="400" border="0">
																<TR>
																	<TD>
																		<asp:Button id="Submitcmd" runat="server" Text="Submit" BorderColor="SteelBlue" BackColor="Lavender" onclick="submitcmd_Click"></asp:Button></TD>
																	<TD>
																		<asp:Button id="cancelcmd" runat="server" Text="Cancel" BorderColor="SteelBlue" BackColor="Lavender"
																			CausesValidation="False" onclick="cancelcmd_Click"></asp:Button></TD>
																</TR>
															</TABLE>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														</TD>
													</TR>
												</TABLE>
											</TD>
										</TR>
									</TABLE>
								</TD>
								<TD width="20%" vAlign="top">
									<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="100%" border="1">
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

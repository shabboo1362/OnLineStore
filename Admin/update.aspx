<%@ Reference Page="~/error.aspx" %>
<%@ Reference Page="~/update.aspx" %>
<%@ Register TagPrefix="uc1" TagName="logo" Src="uc/logo.ascx" %>
<%@ Page language="c#" Inherits="OnLineStore.Admin.update" CodeFile="update.aspx.cs" %>
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
				<tr width="100%">
					<td align="left" width="100%">
						<TABLE id="Table1" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
							<TR width="100%">
								<TD style="WIDTH: 214px" width="214"><asp:button id="homecmd" runat="server" CausesValidation="False" BorderColor="DarkOrange" BackColor="Bisque"
										Text="home" Height="30px" onclick="homecmd_Click"></asp:button></TD>
								<TD align="center" width="15%"><asp:button id="requestcmd" runat="server" CausesValidation="False" BorderColor="DarkOrange"
										BackColor="Bisque" Text="Factors" Height="30px" onclick="requestcmd_Click"></asp:button></TD>
								<TD align="center" width="15%"><asp:button id="addproductcmd" runat="server" CausesValidation="False" BorderColor="DarkOrange"
										BackColor="Bisque" Text="Add product" Height="30px" onclick="addproductcmd_Click"></asp:button></TD>
								<TD align="center" width="15%"><asp:button id="buttoncmd" runat="server" CausesValidation="False" BorderColor="DarkOrange"
										BackColor="Bisque" Text="update" Height="30px" onclick="Button1_Click"></asp:button></TD>
								<TD align="left" width="40%"><asp:button id="productcmd" runat="server" CausesValidation="False" BorderColor="DarkOrange"
										BackColor="Bisque" Text="Product" Height="30px" onclick="productcmd_Click"></asp:button></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 214px" align="left" width="214"><asp:linkbutton id="sigmoutlink" runat="server">Sign Out</asp:linkbutton></TD>
								<TD align="left" width="15%"></TD>
								<TD align="center" width="15%"></TD>
								<TD align="center" width="15%"></TD>
								<TD align="center" width="15%"></TD>
							</TR>
						</TABLE>
					</td>
				</tr>
				<tr width="100%">
					<td width="100%" height="33"></td>
				</tr>
				<tr width="100%">
					<td vAlign="top" width="100%">
						<TABLE id="Table7" borderColor="#dae4c0" height="100%" cellSpacing="0" cellPadding="0"
							width="100%" bgColor="#eef4ec" border="1">
							<TR width="100%">
								<TD style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none"
									vAlign="top" width="100%" bgColor="#eef4ec"><asp:validationsummary id="ValidationSummary1" runat="server"></asp:validationsummary></TD>
							</TR>
							<TR width="100%">
								<TD style="FONT-WEIGHT: bold; FONT-FAMILY: 'Times New Roman'" vAlign="top" align="center"
									width="100%">
									<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="100%" border="0">
										<TR width="100%">
											<TD align="left" width="13%"><asp:label id="usernamelbl" runat="server" Font-Size="12px" Font-Names="Verdana">UserName</asp:label></TD>
											<TD width="87%"><asp:textbox id="usernametxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderWidth="1px"
													BorderStyle="Solid"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" EnableViewState="False" ControlToValidate="usernametxt"
													ErrorMessage="Enter username">*</asp:requiredfieldvalidator>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<asp:label id="usernameerror" runat="server" ForeColor="Red" Visible="False">please enter another Username</asp:label></TD>
										</TR>
										<TR width="100%">
											<TD align="left" width="13%"><asp:label id="oldpasswordlbl" runat="server" Font-Size="12px" Font-Names="Verdana">Old Password</asp:label></TD>
											<TD width="87%"><asp:textbox id="oldpasswordtxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderWidth="1px"
													BorderStyle="Solid" TextMode="Password"></asp:textbox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<asp:label id="error" runat="server" ForeColor="Red" Visible="False">Your password is not available</asp:label></TD>
										</TR>
										<TR width="100%">
											<TD align="left" width="13%"><asp:label id="Label3" runat="server" Font-Size="12px" Font-Names="Verdana">New Password</asp:label></TD>
											<TD width="87%"><asp:textbox id="newpasswordtxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderWidth="1px"
													BorderStyle="Solid" TextMode="Password"></asp:textbox><asp:label id="Label1" runat="server"></asp:label></TD>
										</TR>
										<TR width="100%">
											<TD width="13%"><asp:label id="confirmpasswordlbl" runat="server" Font-Size="12px" Font-Names="Verdana">Confirm Password</asp:label></TD>
											<TD width="87%"><asp:textbox id="confirmpasswordtxt" runat="server" Width="120px" BorderColor="LightSteelBlue"
													BorderWidth="1px" BorderStyle="Solid" TextMode="Password"></asp:textbox>&nbsp;&nbsp;
												<asp:comparevalidator id="CompareValidator1" runat="server" ControlToValidate="confirmpasswordtxt" ErrorMessage="Confirm new password shoud be like your new password "
													ControlToCompare="newpasswordtxt">*</asp:comparevalidator>&nbsp;&nbsp;&nbsp;</TD>
										</TR>
										<TR width="100%">
											<TD width="13%"></TD>
											<TD width="87%"></TD>
										</TR>
										<TR width="100%">
											<TD align="left" width="13%"><asp:label id="firstname" runat="server" Font-Size="12px" Font-Names="Verdana">FirstName</asp:label></TD>
											<TD width="87%"><asp:textbox id="firstnametxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderWidth="1px"
													BorderStyle="Solid"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" EnableViewState="False" ControlToValidate="firstnametxt"
													ErrorMessage="Enter firstname">*</asp:requiredfieldvalidator></TD>
										</TR>
										<TR width="100%">
											<TD align="left" width="13%"><asp:label id="lastnamelbl" runat="server" Font-Size="12px" Font-Names="Verdana">Last Name</asp:label></TD>
											<TD width="87%"><asp:textbox id="lastnametxt" runat="server" Width="120px" BorderColor="LightSteelBlue" BorderWidth="1px"
													BorderStyle="Solid"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" EnableViewState="False" ControlToValidate="lastnametxt"
													ErrorMessage="Enter lastname">*</asp:requiredfieldvalidator></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 119px; HEIGHT: 23px"></TD>
											<TD style="HEIGHT: 23px"></TD>
										</TR>
									</TABLE>
									<TABLE id="Table3" cellSpacing="0" cellPadding="0" width="50%" border="0">
										<TR width="100%">
											<TD width="50%"><asp:button id="cancelcmd" runat="server" BackColor="DarkSeaGreen" Text="cancel" onclick="cancelcmd_Click"></asp:button></TD>
											<TD width="50%"><asp:button id="updatecmd" runat="server" BackColor="DarkSeaGreen" Text="update" ForeColor="#404040" onclick="updatecmd_Click"></asp:button></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<tr width="100%">
								<td align="center" bgcolor="#eef4ec" style="FONT-WEIGHT: bold; FONT-FAMILY: 'Times New Roman'"
									valign="top" width="50%">
								</td>
							</tr>
						</TABLE>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>

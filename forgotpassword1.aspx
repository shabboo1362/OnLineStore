<%@ Reference Page="~/error.aspx" %>
<%@ Page language="c#" Inherits="OnLineStore.forgotpassword1" CodeFile="forgotpassword1.aspx.cs" %>
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
			<TABLE id="Table1" style="LEFT: 0px; TOP: 0px" height="100%" cellSpacing="0" cellPadding="0"
				width="100%" border="0">
				<TR>
					<TD style="HEIGHT: 129px" height="129">
						<uc1:logo id="Logo1" runat="server"></uc1:logo></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 403px">
						<TABLE id="Table2" height="50%" cellSpacing="0" cellPadding="0" width="100%" bgColor="#eef4ec"
							border="0" style="BORDER-RIGHT: #669966 1px solid; BORDER-TOP: #669966 1px solid; BORDER-LEFT: #669966 1px solid; BORDER-BOTTOM: #669966 1px solid">
							<tr>
								<td></td>
							</tr>
							<TR width="100%">
								<TD vAlign="middle" align="left" width="100%" style="BORDER-BOTTOM-COLOR: #eef4ec; HEIGHT: 51px; BORDER-BOTTOM-STYLE: solid">&nbsp;&nbsp;
									<asp:label id="Label2" runat="server" Font-Size="9pt" Font-Names="Verdana" Font-Bold="True">Enter your email address that you registered previously, and we will send your password to you there .</asp:label>
								</TD>
							</TR>
							<TR width="100%">
								<TD align="center" width="100%" height="45" style="BORDER-TOP: #eef4ec thin solid; HEIGHT: 45px"
									vAlign="middle">
									<DIV align="center"><asp:label id="Label1" runat="server" Font-Names="Verdana" Font-Size="9pt"> Email : </asp:label>&nbsp;&nbsp;
										<asp:textbox id="emailtxt" runat="server" Width="160px" BorderColor="LightSteelBlue" BorderWidth="1px"
											BorderStyle="Solid" ontextchanged="emailtxt_TextChanged"></asp:textbox><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" Font-Names="Verdana" Font-Size="9pt"
											ControlToValidate="emailtxt" ErrorMessage="Enter your UserName">*Enter your Email</asp:requiredfieldvalidator>&nbsp;
										<asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid format" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
											ControlToValidate="emailtxt" Font-Size="9pt" Font-Names="Verdana"></asp:RegularExpressionValidator></DIV>
									<DIV style="BORDER-TOP: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid">&nbsp;</DIV>
								</TD>
							</TR>
							<tr>
								<td style="BORDER-TOP: #eef4ec thin solid; BORDER-BOTTOM: #eef4ec thin solid" align="center">
									<TABLE id="Table4" height="19" width="40%">
										<TR width="100%">
											<TD style="WIDTH: 99px" align="center">
												<asp:ImageButton id="nextcmd" runat="server" ImageUrl="image/next.gif"></asp:ImageButton>&nbsp;&nbsp;&nbsp;&nbsp;
											</TD>
											<TD>
												<asp:label id="error" runat="server" Font-Size="9pt" Font-Names="Verdana" Visible="False" ForeColor="Red">Email is invaild </asp:label></TD>
										</TR>
									</TABLE>
								</td>
							</tr>
							<TR width="100%">
								<TD width="100%" height="70%" style="BORDER-TOP: #eef4ec thin solid"></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>

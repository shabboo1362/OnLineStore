<%@ Page language="c#" Inherits="OnLineStore.forgotpassword" CodeFile="forgotpassword.aspx.cs" %>
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
				<tr>
					<td vAlign="middle" align="left" height="65" style="HEIGHT: 65px">
						<TABLE id="Table5" style="WIDTH: 168px; HEIGHT: 30px" height="30" cellSpacing="0" cellPadding="0"
							width="168" border="0">
							<TR>
								<TD style="WIDTH: 72px">&nbsp;<asp:hyperlink id="home" runat="server" NavigateUrl="index.aspx" Font-Names="Verdana" Font-Size="9pt"
										Font-Bold="True">Home</asp:hyperlink></TD>
								<TD>&nbsp;&nbsp;
									<asp:hyperlink id="joinnow" runat="server" Font-Names="Verdana" Font-Size="9pt" Font-Bold="True"
										NavigateUrl="joinnow.aspx" Width="64px">Join Now</asp:hyperlink></TD>
							</TR>
						</TABLE>
						<hr color="#999999">
					</td>
				</tr>
				<TR>
					<TD style="HEIGHT: 403px">
						<TABLE id="Table2" height="50%" cellSpacing="0" cellPadding="0" width="100%" bgColor="#eef4ec"
							border="0" style="BORDER-RIGHT: #669966 1px solid; BORDER-TOP: #669966 1px solid; BORDER-LEFT: #669966 1px solid; BORDER-BOTTOM: #669966 1px solid">
							<TR width="100%">
								<TD vAlign="middle" align="center" width="100%" height="51" style="BORDER-BOTTOM-COLOR: #eef4ec; HEIGHT: 51px; BORDER-BOTTOM-STYLE: solid">
									<TABLE id="Table3" width="60%">
										<TR width="100%">
											<TD>
												<asp:label id="Label2" runat="server" Font-Names="Verdana" Font-Size="9pt"> Your UserName: </asp:label></TD>
											<TD>
												<asp:textbox id="usernametxt" runat="server" Width="160px" BorderWidth="1px" BorderColor="LightSteelBlue"
													BorderStyle="Solid"></asp:textbox>
											<TD>
												<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" Font-Names="Verdana" Font-Size="9pt"
													ControlToValidate="usernametxt">*Enter your UserName</asp:RequiredFieldValidator></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR width="100%">
								<TD align="center" width="100%" height="19" style="BORDER-TOP: #eef4ec thin solid; HEIGHT: 19px"
									vAlign="middle">
									<TABLE id="Table4" height="19" width="40%">
										<TR width="100%">
											<TD style="WIDTH: 99px" align="right">&nbsp;
												<asp:ImageButton id="nextcmd" runat="server" ImageUrl="image/next.gif"></asp:ImageButton></TD>
											<TD>
												<asp:Label id="Label1" runat="server" Font-Names="Verdana" Visible="False" ForeColor="Red"
													Font-Size="9pt">your username is invalid</asp:Label></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
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

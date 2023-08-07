<%@ Register TagPrefix="uc1" TagName="login" Src="usercontrol/login.ascx" %>
<%@ Page language="c#" Inherits="OnLineStore.signin" CodeFile="signin.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="logo" Src="usercontrol/logo.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Import Export</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<style>
TD { FONT-SIZE: 11px; COLOR: #000000; FONT-FAMILY: Tahoma }
.date { FONT-WEIGHT: bold; FONT-SIZE: 15px; COLOR: #0586bd; FONT-FAMILY: HeliosCond }
.cap { FONT-WEIGHT: bold; FONT-SIZE: 18px; COLOR: #154a90; FONT-FAMILY: HeliosCond }
.footer { FONT-SIZE: 9px; COLOR: #ffffff; FONT-FAMILY: Verdana }
		</style>
	</HEAD>
	<body topmargin="0" leftmargin="0" bottommargin="0" rightmargin="0">
		<form runat="server" ID="Form1">
			<table id="table0" cellpadding="0" cellspacing="0" border="0" height="100%" width="100%">
				<tr>
					<td width="100%">
						<uc1:logo id="Logo1" runat="server"></uc1:logo>
					</td>
				<tr>
					<td valign="top" width="100%">
						<table id="table1" cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr>
								<td height="52"><img src="image/signin.gif" width="100%"></td>
							</tr>
							<tr>
								<td width="100%" align="center">
									<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="50%" align="center" border="0">
										<TR>
											<TD vAlign="bottom" align="center" width="40%">
												<TABLE id="Table4" height="100" cellSpacing="0" cellPadding="0" width="100%" border="0">
													<TR>
														<TD height="20" background="image/signin2.gif"></TD>
													</TR>
													<TR>
														<TD vAlign="middle" align="center" background="images/freeBox200x80.gif">
															<uc1:login id="Login1" runat="server"></uc1:login></TD>
													</TR>
												</TABLE>
											</TD>
											<TD vAlign="bottom" align="right" width="40%">
												<TABLE id="Table5" height="125" cellSpacing="0" cellPadding="0" width="100%" border="0">
													<TR>
														<TD height="20" background="image/welcomeNewUser.gif"></TD>
													</TR>
													<TR>
														<TD align="center" bgColor="#ffffff" background="image/box400x80.gif">
															<asp:Button id="joincmd" runat="server" Text="Join Now" BackColor="SeaGreen" BorderColor="DarkGreen" onclick="joincmd_Click"></asp:Button></TD>
													</TR>
												</TABLE>
											</TD>
										</TR>
									</TABLE>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>

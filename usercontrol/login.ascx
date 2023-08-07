<%@ Control Language="c#" Inherits="OnLineStore.usercontrol.login" CodeFile="login.ascx.cs" %>
<TABLE id="Table1" style="BORDER-RIGHT: #ff8c00 thin solid; BORDER-TOP: #ff8c00 thin solid; FONT-WEIGHT: bold; FONT-SIZE: 9pt; BORDER-LEFT: #ff8c00 thin solid; COLOR: black; BORDER-BOTTOM: #ff8c00 thin solid; FONT-FAMILY: Verdana"
	cellSpacing="0" cellPadding="1" width="200" align="left" border="0" bgColor="#fffafa">
	<TR>
		<TD style="HEIGHT: 23px" bgColor="#fffafa">&nbsp;username :</TD>
		<TD style="WIDTH: 95px; HEIGHT: 23px" vAlign="bottom" align="center" bgColor="#fffafa"><asp:textbox id="usernametxt" tabIndex="1" BorderWidth="1px" BorderStyle="Solid" BorderColor="LightSteelBlue"
				Width="88px" runat="server" ontextchanged="usernametxt_TextChanged"></asp:textbox></TD>
		<TD style="HEIGHT: 23px" bgColor="#fffafa"><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ErrorMessage="Enter username" ControlToValidate="usernametxt">*</asp:requiredfieldvalidator></TD>
		<TD style="HEIGHT: 23px; BORDER-BOTTOM-STYLE: none" bgColor="#fffafa"></TD>
	</TR>
	<TR>
		<TD style="WIDTH: 70px; HEIGHT: 30px" bgColor="#fffafa">&nbsp;password :</TD>
		<TD style="WIDTH: 95px; HEIGHT: 30px" align="center" bgColor="#fffafa"><asp:textbox id="passwordtxt" tabIndex="2" BorderWidth="1px" BorderStyle="Solid" BorderColor="LightSteelBlue"
				Width="88px" runat="server" TextMode="Password" ontextchanged="passwordtxt_TextChanged"></asp:textbox></TD>
		<TD style="HEIGHT: 30px" bgColor="#fffafa"><asp:imagebutton id="logincmd" tabIndex="3" runat="server" ImageUrl="../image/usercontrolloginbutton2.jpg"></asp:imagebutton></TD>
		<TD style="HEIGHT: 30px" bgColor="#fffafa"><asp:requiredfieldvalidator id="Requiredfieldvalidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="passwordtxt">*</asp:requiredfieldvalidator></TD>
	</TR>
	<TR>
		<TD style="WIDTH: 166px" bgColor="#fffafa" colSpan="2">
			<P>&nbsp;
				<asp:hyperlink id="HyperLink1" runat="server" NavigateUrl="../forgotpassword.aspx">forgot my password</asp:hyperlink></P>
			<P>
				<asp:Label id="Label2" runat="server" Visible="False">Label</asp:Label></P>
		</TD>
		<TD bgColor="#fffafa"></TD>
		<TD bgColor="#fffafa"></TD>
	</TR>
</TABLE>

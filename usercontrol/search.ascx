<%@ Reference Page="~/search.aspx" %>
<%@ Control Language="c#" Inherits="OnLineStore.usercontrol.Migrated_search" CodeFile="search.ascx.cs" %>
<TABLE id="Table17" height="175" cellSpacing="0" cellPadding="0" width="200" align="center"
	border="1" borderColor="seagreen" bgColor="honeydew">
	<TR>
		<TD vAlign="bottom" height="19" align="left" bgColor="darkseagreen">
			<asp:Label id="Label1" runat="server" Font-Bold="True" Font-Size="Medium">search</asp:Label></TD>
	</TR>
	<TR>
		<TD width="100%" vAlign="top" align="right" bgColor="snow">
			<table border="0" width="100%" height="100%" bgColor="honeydew">
				<TR>
					<TD align="left" width="40%">
						<asp:Label id="Label2" runat="server">ProductName :</asp:Label></TD>
				</TR>
				<TR>
					<TD align="center" width="40%">
						<asp:TextBox id="searchtxt" runat="server"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 22px" vAlign="middle" width="200">&nbsp;
						<asp:dropdownlist id="searchddl" BorderWidth="1" BorderStyle="Solid" BorderColor="LightSteelBlue"
							Runat="server" Width="100px" Font-Names="Verdana" Font-Size="9pt">
							<asp:ListItem Value="Product" Selected="True">Product</asp:ListItem>
						</asp:dropdownlist></TD>
				</TR>
				<tr width="100%">
					<td align="center" bgColor="honeydew">
						<asp:Button id="searchcmd" Width="60px" BorderColor="SeaGreen" runat="server" Text="search"
							BackColor="DarkSeaGreen" CausesValidation="False" onclick="searchcmd_Click"></asp:Button>
					</td>
				</tr>
			</table>
		</TD>
	</TR>
</TABLE>

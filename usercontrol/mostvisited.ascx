<%@ Control Language="c#" Inherits="OnLineStore.usercontrol.mostvisited" CodeFile="mostvisited.ascx.cs" %>
<TABLE id="Table17" height="100" cellSpacing="0" cellPadding="0" width="200" align="center"
	border="1" style="FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Verdana"
	borderColor="#ff8c00">
	<TR>
		<TD style="HEIGHT: 18px" vAlign="bottom" height="18" bgColor="#faebd7">MostVisited</TD>
	</TR>
	<TR>
		<TD vAlign="top" bgColor="#fffafa">
			<asp:datagrid id="d1" ShowHeader="False" GridLines="None" CellPadding="5" Width="200px" AutoGenerateColumns="False"
				runat="server" Font-Names="Verdana" Font-Size="8pt">
				<ItemStyle Font-Size="12px" Font-Names="Verdana" HorizontalAlign="Left" ForeColor="Black" VerticalAlign="Middle"></ItemStyle>
				<HeaderStyle Font-Size="12px" Font-Names="Verdana" Font-Bold="True" HorizontalAlign="Center"
					ForeColor="Black" VerticalAlign="Middle"></HeaderStyle>
				<Columns>
					<asp:HyperLinkColumn DataNavigateUrlField="ProductID" DataNavigateUrlFormatString="../productdescription.aspx?ProductID={0}"
						DataTextField="ProductName" NavigateUrl="../productdescription.aspx"></asp:HyperLinkColumn>
					<asp:BoundColumn Visible="False" DataField="ProductID"></asp:BoundColumn>
				</Columns>
			</asp:datagrid></TD>
	</TR>
</TABLE>

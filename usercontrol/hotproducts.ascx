<%@ Control Language="c#" Inherits="OnLineStore.usercontrol.hotproducts" CodeFile="hotproducts.ascx.cs" %>
<TABLE id="Table17" height="100" cellSpacing="0" cellPadding="0" width="200" align="center"
	border="1" borderColor="#ff8c00">
	<TR>
		<TD vAlign="bottom" style="FONT-WEIGHT: bold; FONT-SIZE: 9pt; COLOR: black; FONT-FAMILY: Verdana"
			height="19" bgColor="#faebd7">HotProducts</TD>
	</TR>
	<TR>
		<TD vAlign="top" bgColor="#fffafa"><asp:datagrid id="d1" runat="server" AutoGenerateColumns="False" Width="200px" CellPadding="5"
				GridLines="None" ShowHeader="False" Font-Names="Verdana" Font-Size="8pt">
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

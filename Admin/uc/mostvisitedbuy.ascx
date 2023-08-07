<%@ Control Language="c#" Inherits="OnLineStore.Admin.uc.mostvisited" CodeFile="mostvisitedbuy.ascx.cs" %>
<TABLE id="Table17" borderColor="#ff8c00" height="175" cellSpacing="0" cellPadding="0"
	width="200" align="center" bgColor="darkorange" border="1">
	<TR>
		<TD vAlign="bottom" align="left" bgColor="antiquewhite" height="19"><asp:label id="Label1" runat="server" Font-Bold="True">Most Visited</asp:label></TD>
	</TR>
	<TR>
		<TD vAlign="top" align="right" bgColor="snow"><asp:datagrid id="d1" ShowHeader="False" GridLines="None" CellPadding="5" Width="200px" AutoGenerateColumns="False"
				runat="server">
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

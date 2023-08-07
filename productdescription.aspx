<%@ Reference Page="~/welcome.aspx" %>
<%@ Page language="c#" Inherits="OnLineStore.productdescription" CodeFile="productdescription.aspx.cs" %>
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
					<td vAlign="middle" align="left" height="30">
						<TABLE id="Table5" style="HEIGHT: 24px" cellSpacing="1" cellPadding="1" width="400" border="0">
							<TR>
								<TD style="WIDTH: 69px">&nbsp;
									<asp:HyperLink id="home" runat="server" Font-Bold="True" Font-Size="9pt" Font-Names="Verdana" NavigateUrl="index.aspx">Home</asp:HyperLink></TD>
								<TD>&nbsp;
									<asp:HyperLink id="joinnow" runat="server" Font-Bold="True" Font-Size="9pt" Font-Names="Verdana"
										NavigateUrl="joinnow.aspx">Join Now</asp:HyperLink></TD>
								<TD>
									<asp:Label id="welcome" runat="server" Font-Bold="True" Font-Size="9pt" Font-Names="Verdana"
										Visible="False">Welcome </asp:Label></TD>
								<TD>
									<asp:LinkButton id="signout" runat="server" Visible="False" Font-Names="Verdana" Font-Size="9pt"
										Font-Bold="True" onclick="signout_Click">[ Sign out ]</asp:LinkButton></TD>
							</TR>
						</TABLE>
						<hr color="#999999">
					</td>
				</tr>
				<tr>
					<td style="HEIGHT: 22px"><IMG height="24" src="image/GeneralProductInformation.jpg" width="100%"></td>
				</tr>
				<tr>
					<td align="center">
						<br>
						<asp:datagrid id="d1" runat="server" Font-Size="9pt" Font-Names="Verdana" Width="90%" GridLines="Horizontal"
							CellPadding="3" AutoGenerateColumns="False" PageSize="1" BorderStyle="None" BorderColor="#E7E7FF"
							BorderWidth="1px" BackColor="White">
							<SelectedItemStyle Font-Bold="True" ForeColor="#F7F7F7" BackColor="#738A9C"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="#F7F7F7"></AlternatingItemStyle>
							<ItemStyle Font-Size="12px" Font-Names="Verdana" HorizontalAlign="Center" ForeColor="#4A3C8C"
								VerticalAlign="Middle" BackColor="#E7E7FF"></ItemStyle>
							<HeaderStyle Font-Size="12px" Font-Names="Verdana" Font-Bold="True" HorizontalAlign="Center"
								ForeColor="#F7F7F7" VerticalAlign="Middle" BackColor="#4A3C8C"></HeaderStyle>
							<FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
							<Columns>
								<asp:TemplateColumn>
									<ItemTemplate>
										<asp:Image id="Image1" runat="server"></asp:Image>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:BoundColumn DataField="ProductName" HeaderText="Product Name"></asp:BoundColumn>
								<asp:BoundColumn DataField="Description" HeaderText="Description"></asp:BoundColumn>
								<asp:BoundColumn DataField="Model" HeaderText="Model"></asp:BoundColumn>
								<asp:BoundColumn DataField="Price" HeaderText="Price"></asp:BoundColumn>
								<asp:BoundColumn Visible="False" DataField="ProductID"></asp:BoundColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Right" ForeColor="#4A3C8C" BackColor="#E7E7FF" Mode="NumericPages"></PagerStyle>
						</asp:datagrid>
					</td>
				</tr>
				<TR>
					<TD style="HEIGHT: 403px">
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>

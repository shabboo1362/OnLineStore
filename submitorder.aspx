<%@ Page language="c#" Inherits="OnLineStore.submitorder" CodeFile="submitorder.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="logo" Src="usercontrol/logo.ascx" %>
<%@ Register TagPrefix="uc1" TagName="hotproducts" Src="usercontrol/hotproducts.ascx" %>
<%@ Register TagPrefix="uc1" TagName="mostvisited" Src="usercontrol/mostvisited.ascx" %>
<%@ Register TagPrefix="uc1" TagName="OurPolicy" Src="usercontrol/OurPolicy.ascx" %>
<%@ Register TagPrefix="uc1" TagName="search" Src="usercontrol/search.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>submitorder</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
				<TR>
					<TD height="125">
						<uc1:logo id="Logo1" runat="server"></uc1:logo></TD>
				</TR>
				<TR>
					<TD height="25">
						<TABLE id="Table6" cellSpacing="1" cellPadding="1" width="100%" border="0">
							<TR>
								<TD width="30%">
									<asp:HyperLink id="homelink" runat="server" NavigateUrl="welcome.aspx">Home</asp:HyperLink></TD>
								<TD width="90%">
									<asp:LinkButton id="signoutlink" runat="server" onclick="signoutlink_Click">Sign Out</asp:LinkButton></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD>
						<HR color="#999999">
						<TABLE id="Table2" height="100%" cellSpacing="1" cellPadding="1" width="100%" border="0">
							<TR>
								<TD width="20%" vAlign="top">
									<TABLE width="100%" id="Table4" cellSpacing="1" cellPadding="1" border="0">
										<TR>
											<TD>
												<uc1:search id="Search1" runat="server"></uc1:search></TD>
										</TR>
										<TR>
											<TD>
												<uc1:OurPolicy id="OurPolicy1" runat="server"></uc1:OurPolicy></TD>
										</TR>
										<TR>
											<TD></TD>
										</TR>
									</TABLE>
								</TD>
								<TD width="60%">
									<TABLE id="Table5" width="100%" height="100%" cellSpacing="1" cellPadding="1" border="0">
										<TR>
											<TD vAlign="top" align="center" height="30">
												<asp:Label id="Label1" runat="server" Font-Bold="True" Font-Italic="True">Your Request submit and your basket empty</asp:Label></TD>
										</TR>
										<TR>
											<TD vAlign="top" align="center" height="30">
												<asp:Label id="Label2" runat="server" Font-Bold="True" Font-Italic="True">Thanks for your byeing</asp:Label></TD>
										</TR>
										<TR>
											<TD vAlign="top" align="right">
											</TD>
										</TR>
									</TABLE>
								</TD>
								<TD width="20%" vAlign="top">
									<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="100%" border="0">
										<TR>
											<TD>
												<uc1:mostvisited id="Mostvisited1" runat="server"></uc1:mostvisited></TD>
										<TR>
											<TD>
												<uc1:hotproducts id="Hotproducts1" runat="server"></uc1:hotproducts></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>

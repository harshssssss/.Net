<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="vqueryctmr.aspx.cs" Inherits="admin_vqueryctmr" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="customer id" Font-Bold="True" ForeColor="#FF9966"></asp:Label>
    &nbsp;&nbsp;
    <asp:DropDownList ID="cid" runat="server" AppendDataBoundItems="True" Font-Bold="True">
        <asp:ListItem>Select Id</asp:ListItem>
    </asp:DropDownList>
    &nbsp; &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
        ControlToValidate="cid" ErrorMessage="*" InitialValue="Select Id"></asp:RequiredFieldValidator>
    &nbsp; &nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View" />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/adminprelvs.aspx">Admin</asp:HyperLink><br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <EditRowStyle BackColor="#999999" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
</asp:Content>


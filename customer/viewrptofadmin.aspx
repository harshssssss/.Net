<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="viewrptofadmin.aspx.cs" Inherits="customer_viewrptofadmin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:Label ID="Label2" runat="server" BackColor="#CC6666" Font-Bold="True" Font-Size="12pt"
        Font-Underline="True" ForeColor="#0066CC" Text="View Reprt of Admin"></asp:Label><br />
    <br />
    &nbsp;
    <br />
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
 <asp:Label ID="Label1" runat="server" Text="customer id" Font-Bold="True" Font-Italic="True" ForeColor="#0000CC"></asp:Label>
    &nbsp;&nbsp;
    <asp:DropDownList ID="cid" runat="server" AppendDataBoundItems="True" Font-Bold="True">
        <asp:ListItem>select id</asp:ListItem>
    </asp:DropDownList>
    &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cid"
        ErrorMessage="*" Font-Bold="False" InitialValue="select id"></asp:RequiredFieldValidator>
    &nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View" Font-Bold="True" />
    &nbsp; &nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True"
        ForeColor="#CC3366" NavigateUrl="~/customer/customerprelvs.aspx">Home</asp:HyperLink><br />
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


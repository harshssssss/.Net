<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="viewnondel.aspx.cs" Inherits="courier_viewnondel" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Panel ID="Panel1" runat="server" Height="368px" Width="786px">
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="View Nondelivery Details" Font-Bold="True" Font-Italic="True" Font-Underline="True" ForeColor="#0033FF"></asp:Label>
        <br />
        &nbsp;<br />
        &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="ParcelNo" Font-Bold="True"></asp:Label>
        &nbsp;<asp:TextBox ID="pno" runat="server" AutoPostBack="True" OnTextChanged="pno_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pno"
        ErrorMessage="*"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="View" />
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/courier/courierprelvs.aspx" Font-Bold="True" Font-Italic="True">Courier</asp:HyperLink>
    &nbsp; &nbsp;
    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="~/customer/customerprelvs.aspx">Customer</asp:HyperLink><br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:GridView>
    </asp:Panel>
</asp:Content>


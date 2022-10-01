<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="courierprelvs.aspx.cs" Inherits="courier_courierprelvs" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="381px" Style="background-color: peachpuff"
        Width="763px">
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="24pt"
            Font-Underline="True" ForeColor="#FF0000" Text="Courier Privilizes"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:HyperLink ID="HyperLink8" runat="server" Font-Bold="True" ForeColor="#CC0066"
            NavigateUrl="~/courier/login.aspx">Back</asp:HyperLink><div
                style="text-align: center">
                <br />
                <br />
                <br />
                <table style="width: 266px; height: 285px">
                    <tr>
                        <td style="width: 100px">
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0033CC" NavigateUrl="~/courier/bookingdtls.aspx" Width="144px">Booking Details</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: left;">
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0033CC" NavigateUrl="~/courier/incomingdtls.aspx" Width="151px">Incoming Details</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0033CC" NavigateUrl="~/courier/nondeliverydtls.aspx" Width="187px">Non Delivered Details</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: left;">
                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0033CC" NavigateUrl="~/courier/outreturns.aspx" Width="115px">Out Returns</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: left;">
                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0033CC" NavigateUrl="~/courier/hubcenter.aspx" Width="106px">Hub Centre</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: left;">
                            <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0033CC" NavigateUrl="~/courier/pickupcentre.aspx" Width="132px">Pick Up Centre</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 14px; text-align: left;">
                            <asp:HyperLink ID="HyperLink7" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0033CC" NavigateUrl="~/courier/cmpdetails.aspx" Width="153px">Company Details</asp:HyperLink></td>
                    </tr>
                </table>
            </div>
    </asp:Panel>
</asp:Content>


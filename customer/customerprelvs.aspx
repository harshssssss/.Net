<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="customerprelvs.aspx.cs" Inherits="customer_customerprelvs" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="378px" Width="787px" style="background-color: #ffcccc">
        <div style="text-align: center">
            <div style="text-align: center; background-color: #ffcccc;">
                <asp:Label ID="Label1" runat="server" BackColor="#FFCCCC" Font-Bold="True" Font-Italic="True"
                    Font-Names="Arial CYR" Font-Size="24pt" Font-Underline="True" ForeColor="#333300"
                    Text="Customer Previlizes"></asp:Label><br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:HyperLink
                    ID="HyperLink7" runat="server" Font-Bold="True" Font-Size="12pt" NavigateUrl="~/customer/login.aspx">Back</asp:HyperLink>
                &nbsp; &nbsp;&nbsp;
                <br />
                <br />
                <table style="width: 276px; height: 308px">
                    <tr>
                        <td style="width: 100px">
                            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#CC6666" Font-Bold="True" NavigateUrl="~/customer/send rpt to bk courier.aspx" Width="289px">Send Report To Book A Courier</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:HyperLink ID="HyperLink2" runat="server" BackColor="#CC6666" Font-Bold="True" NavigateUrl="~/courier/viewbooking.aspx" Width="197px">View Booked Courier</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:HyperLink ID="HyperLink3" runat="server" BackColor="#CC6666" Font-Bold="True" NavigateUrl="~/courier/viewnondel.aspx" Width="153px">Status of Courier</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:HyperLink ID="HyperLink4" runat="server" BackColor="#CC6666" Font-Bold="True" NavigateUrl="~/customer/cstmrdetails.aspx" Width="163px">Customer Details</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:HyperLink ID="HyperLink5" runat="server" BackColor="#CC6666" Font-Bold="True" NavigateUrl="~/customer/querytoadmin.aspx" Width="205px">Query To Admin</asp:HyperLink></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:HyperLink ID="HyperLink6" runat="server" BackColor="#CC6666" Font-Bold="True" NavigateUrl="~/customer/viewrptofadmin.aspx" Width="264px">View Report Of Admin </asp:HyperLink></td>
                    </tr>
                </table>
            </div>
        </div>
    </asp:Panel>
</asp:Content>


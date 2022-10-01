<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="rptcustomer.aspx.cs" Inherits="admin_view_emp" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:Panel ID="Panel1" runat="server" Height="434px" Width="774px">
        <div style="text-align: left">
            <div style="background-color: Aqua; text-align: center">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Underline="True"
                    ForeColor="#990066" NavigateUrl="~/customer/customerprelvs.aspx">customer</asp:HyperLink><br />
                <strong><span style="font-size: 14pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Query to Customer/Admin &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/admin/adminprelvs.aspx">Admin</asp:HyperLink></span></strong><br />
                <br />
                <br />
                <table>
                    <tr>
                        <td style="width: 100px; height: 41px; text-align: left">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Text="Customer Id:"></asp:Label></td>
                        <td style="width: 100px; height: 41px; text-align: left">
                            <asp:DropDownList ID="cid" runat="server" AppendDataBoundItems="True" AutoPostBack="True" Font-Bold="True" OnSelectedIndexChanged="cid_SelectedIndexChanged">
                                <asp:ListItem>Select Id</asp:ListItem>
                            </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="cid" ErrorMessage="*" InitialValue="Select Id"></asp:RequiredFieldValidator></td>
                        <td style="width: 104px; height: 41px; text-align: left">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Height="21px"
                                Text="Customer Name:" Width="125px"></asp:Label></td>
                        <td style="width: 100px; height: 41px">
                            <asp:TextBox ID="cname" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: left">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Text="Date"></asp:Label></td>
                        <td style="width: 100px; text-align: left">
                            <asp:TextBox ID="date" runat="server"></asp:TextBox></td>
                        <td style="width: 104px; text-align: left">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Text="Time"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="time" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="date"
                    ErrorMessage="Enter yy/mm/dd formate" MaximumValue="2010/01/01" MinimumValue="2008/01/01"
                    Type="Date"></asp:RangeValidator><br />
                &nbsp; &nbsp;<br />
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Style="z-index: 100;
                    left: 202px; position: absolute; top: 636px" Text="Query"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="104px" TextMode="MultiLine" Width="367px"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="Enter a courier details"></asp:RequiredFieldValidator><br />
                <br />
                <br />
                <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" />
                &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="Button2" runat="server" Text="Clear" CausesValidation="False" OnClick="Button2_Click" /><br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
    </asp:Panel>
</asp:Content>


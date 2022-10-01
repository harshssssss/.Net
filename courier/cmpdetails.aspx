<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="cmpdetails.aspx.cs" Inherits="courier_cmpdetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="378px" Style="background-color: #cccc99"
        Width="808px">
        <div style="text-align: center">
            <br />
            <br />
            <br />
            <br />
            <div style="text-align: center">
                <table>
                    <tr>
                        <td style="width: 100px">
                            <asp:Label ID="Label1" runat="server" Text="Company Id"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="cid" runat="server"></asp:TextBox></td>
                        <td style="width: 100px">
                            <asp:Label ID="Label2" runat="server" Text="C Name"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="cname" runat="server"></asp:TextBox></td>
                        <td style="width: 100px">
                            <asp:Label ID="Label3" runat="server" Text="Contact No"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="contact" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 26px">
                            <asp:Label ID="Label4" runat="server" Text="Office No"></asp:Label></td>
                        <td style="width: 100px; height: 26px">
                            <asp:TextBox ID="oficeno" runat="server"></asp:TextBox></td>
                        <td style="width: 100px; height: 26px">
                            <asp:Label ID="Label5" runat="server" Text="Mail Id"></asp:Label></td>
                        <td style="width: 100px; height: 26px">
                            <asp:TextBox ID="cmailid" runat="server"></asp:TextBox></td>
                        <td style="width: 100px; height: 26px">
                            <asp:Label ID="Label6" runat="server" Text="Contact Name"></asp:Label></td>
                        <td style="width: 100px; height: 26px">
                            <asp:TextBox ID="contactname" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 20px">
                            <asp:Label ID="Label7" runat="server" Text="Payment Type"></asp:Label></td>
                        <td style="width: 100px; height: 20px">
                            <asp:DropDownList ID="paytype" runat="server">
                                <asp:ListItem>Select type</asp:ListItem>
                                <asp:ListItem>CreditCard</asp:ListItem>
                                <asp:ListItem>DebitCard</asp:ListItem>
                                <asp:ListItem>Check</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style="width: 100px; height: 20px">
                            <asp:Label ID="Label8" runat="server" Text="Max Credit"></asp:Label></td>
                        <td style="width: 100px; height: 20px">
                            <asp:TextBox ID="maxcredit" runat="server"></asp:TextBox></td>
                        <td style="width: 100px; height: 20px">
                            <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label></td>
                        <td style="width: 100px; height: 20px">
                            <asp:TextBox ID="caddress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="oficeno"
            ErrorMessage="*"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="contact"
            ErrorMessage="*"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cname"
            ErrorMessage="*"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cid"
            ErrorMessage="*"></asp:RequiredFieldValidator>&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="contactname"
            ErrorMessage="*"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="maxcredit"
            ErrorMessage="*"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="caddress"
            ErrorMessage="*"></asp:RequiredFieldValidator>&nbsp;
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="maxcredit"
            ErrorMessage="enter 100-1000" MaximumValue="1000" MinimumValue="100" Type="Integer"></asp:RangeValidator>
        &nbsp; &nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="contact"
            ErrorMessage="Enter 10digits no" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="cmailid"
            ErrorMessage="Id invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="cmailid"
            ErrorMessage="*"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="oficeno"
            ErrorMessage="Eneter 10 Digits" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="paytype"
            ErrorMessage="Enter type" InitialValue="Select type"></asp:RequiredFieldValidator><br />
        <br />
        &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="view" runat="server" Text="View" OnClick="view_Click" CausesValidation="False" PostBackUrl="~/courier/viewbooking.aspx" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Button ID="clear" runat="server" Text="Clear" CausesValidation="False" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/courier/courierprelvs.aspx">Back</asp:HyperLink>
        &nbsp; &nbsp;
    </asp:Panel>
</asp:Content>


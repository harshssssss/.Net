<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="customerreg.aspx.cs" Inherits="customer_customerreg" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#CCFFFF" BorderColor="Red"
            Font-Bold="True" ForeColor="#CC0066" NavigateUrl="~/customer/login.aspx">Back</asp:HyperLink></div>
    <table style="width: 527px; height: 273px">
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="customerID"></asp:Label></td>
            <td style="width: 273px">
                <asp:TextBox ID="cid" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 158px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="CustomerName"></asp:Label></td>
            <td style="width: 273px">
                <asp:TextBox ID="cname" runat="server"></asp:TextBox></td>
            <td style="width: 158px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cname"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Password"></asp:Label></td>
            <td style="width: 273px">
                <asp:TextBox ID="cpwd" runat="server" TextMode="Password"></asp:TextBox></td>
            <td style="width: 158px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cpwd"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="cpwd"
                    ErrorMessage="give atleast 4 ltrs" Font-Size="9pt" ValidationExpression="\d{4,}"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Confirm Password" Width="121px"></asp:Label></td>
            <td style="width: 273px">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox></td>
            <td style="width: 158px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="cpwd"
                    ControlToValidate="TextBox1" ErrorMessage="Password not match" Font-Size="9pt"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Dateof Birth"></asp:Label></td>
            <td style="width: 273px">
                <asp:DropDownList ID="dd" runat="server" Font-Bold="True" Style="position: static">
                    <asp:ListItem>dd</asp:ListItem>
                </asp:DropDownList><asp:DropDownList ID="mm" runat="server" Font-Bold="True" Style="position: static">
                    <asp:ListItem>mm</asp:ListItem>
                </asp:DropDownList><asp:DropDownList ID="yy" runat="server" Font-Bold="True" Style="position: static">
                    <asp:ListItem>yy</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 158px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dd"
                    ErrorMessage="*" InitialValue="dd"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="mm"
                    ErrorMessage="*" InitialValue="mm"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="yy"
                    ErrorMessage="*" InitialValue="yy"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Gender"></asp:Label></td>
            <td style="width: 273px">
                <asp:RadioButton ID="male" runat="server" Checked="True" Font-Bold="True" GroupName="g1"
                    Text="Male" /><asp:RadioButton ID="female" runat="server" Font-Bold="True" GroupName="g1"
                        Text="Female" /></td>
            <td style="width: 158px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Address"></asp:Label></td>
            <td style="width: 273px">
                <asp:TextBox ID="caddrs" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td style="width: 158px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="caddrs"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="EmailID"></asp:Label></td>
            <td style="width: 273px">
                <asp:TextBox ID="cemail" runat="server"></asp:TextBox></td>
            <td style="width: 158px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="cemail"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="cemail"
                    ErrorMessage="Id Valid Id" Font-Size="8pt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 18px">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Phone No:"></asp:Label></td>
            <td style="width: 273px; height: 18px">
                <asp:TextBox ID="cphno" runat="server"></asp:TextBox></td>
            <td style="width: 158px; height: 18px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="cphno"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="cphno"
                    ErrorMessage="no  is IinValid" Font-Size="9pt" ValidationExpression="\d{10,}"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 19px">
            </td>
            <td style="width: 273px; height: 19px">
                <asp:Button ID="submit" runat="server" Font-Bold="True" OnClick="submit_Click" Text="Submit" /><asp:Button
                    ID="Clear" runat="server" CausesValidation="False" Font-Bold="True" OnClick="Clear_Click"
                    Text="Clear" /></td>
            <td style="width: 158px; height: 19px">
            </td>
        </tr>
    </table>
</asp:Content>


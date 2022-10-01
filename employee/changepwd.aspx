<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="changepwd.aspx.cs" Inherits="employee_changepwd" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table cellpadding="0" cellspacing="0" 
        style="width: 100%; border-style: solid; border-width: 2px; background-color: #FFCCFF; height: 331px;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Change Password"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Employee id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="empid" runat="server" OnTextChanged="empid_TextChanged" AutoPostBack="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="empid"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Old Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="oldpwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="oldpwd"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="New Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="newpwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="newpwd"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="confirm password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="confirmpwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="confirmpwd"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan =3>
            
                <table cellpadding="0" cellspacing="0" style="width: 100%">
                    <tr>
                        <td>
                            <asp:Button ID="sub" runat="server" Text="Submit" OnClick="sub_Click" />
                        </td>
                        <td>
                            <asp:Button ID="clear" runat="server" Text="Clear" CausesValidation="False" OnClick="clear_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button3" runat="server" Text="Back" CausesValidation="False" PostBackUrl="~/employee/emplogin.aspx" />
                        </td>
                    </tr>
                </table>
            </td>
            
        </tr>
    </table>
</asp:Content>


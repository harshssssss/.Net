<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="empupdate.aspx.cs" Inherits="admin_empupdate" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table width="90%" height="170%"> 
<tr>
<td >
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Employe Id"></asp:Label></td>
<td style="width: 408px" >
    <asp:TextBox ID="id" runat="server" ReadOnly="True"></asp:TextBox></td>
<td >
</td>
</tr>
<tr>
<td style="height: 27px" >
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Employe Name"></asp:Label></td>
<td style="height: 27px; width: 408px;" >
    <asp:TextBox ID="name" runat="server"></asp:TextBox></td>
<td style="height: 27px" >
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name"
        ErrorMessage="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td>
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Date of Birth"></asp:Label></td>
<td style="width: 408px">
    <asp:TextBox ID="dob" runat="server"></asp:TextBox></td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="dob"
        ErrorMessage="*"></asp:RequiredFieldValidator></td>
</tr><tr>
<td>
    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Gender"></asp:Label></td>
<td style="width: 408px">
    <asp:TextBox ID="gen" runat="server"></asp:TextBox></td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="gen"
        ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="gen"
        ErrorMessage="enter male or female" ValidationExpression="(Male|Female)"></asp:RegularExpressionValidator></td>
</tr><tr>
<td style="height: 28px">
    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Address"></asp:Label></td>
<td style="height: 28px; width: 408px;">
    <asp:TextBox ID="adrs" runat="server" TextMode="MultiLine"></asp:TextBox></td>
<td style="height: 28px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="adrs"
        ErrorMessage="*"></asp:RequiredFieldValidator></td>
</tr><tr>
<td>
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Email Id"></asp:Label></td>
<td style="width: 408px">
    <asp:TextBox ID="email" runat="server"></asp:TextBox></td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="email"
        ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email"
        ErrorMessage="Id is Invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
</tr><tr>
<td>
    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Phone No"></asp:Label></td>
<td style="width: 408px">
    <asp:TextBox ID="phno" runat="server"></asp:TextBox></td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="phno"
        ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="phno"
        ErrorMessage="phno is invalid" ValidationExpression="\d{10}"></asp:RegularExpressionValidator></td>
</tr><tr>
<td>
</td>
<td style="width: 408px">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" Font-Bold="True" />
    <asp:Button ID="Button2" runat="server" Text="Clear" CausesValidation="False" Font-Bold="True" OnClick="Button2_Click" /></td>
<td>
    <asp:Button ID="Button3" runat="server" Font-Bold="True" OnClick="Button3_Click"
        Text="Back" /></td>
</tr>
</table>
</asp:Content>


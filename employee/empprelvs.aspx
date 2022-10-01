<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="empprelvs.aspx.cs" Inherits="employee_empprelvs" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellpadding="0" cellspacing="0" 
        style="width: 100%; background-color: #BDEBBC; height: 342px;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" 
                    Text="Employee previlizes"></asp:Label>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink5" runat="server" 
                    NavigateUrl="~/employee/emplogin.aspx">Back</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink4" runat="server" 
                    NavigateUrl="~/admin/empdetails.aspx">View emloyee details</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/employee/changepwd.aspx">Change Password</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink3" runat="server" 
                    NavigateUrl="~/admin/saldetails.aspx">View Salary Details</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


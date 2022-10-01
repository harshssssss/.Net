<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="empdetails.aspx.cs" Inherits="admin_empdetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <script language="javascript" type="text/javascript">
    function f1()
    {
    var ans=confirm("do u want delete?");
    alert(ans);
    if(ans)
    {
    alert("record deleted");
    return true;
    }
    else
    {
    var a=document.getElementById('<%=del.ClientID%>') ;
   
    alert("record not deleted");
    return false;
    
    }
    }
    </script>

    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    &nbsp;&nbsp;<table>
        <tr>
            <td style="width: 100px">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Employee ID:"></asp:Label></td>
            <td style="width: 100px">
                <asp:DropDownList ID="empid" runat="server" AppendDataBoundItems="True" Font-Bold="True" ValidationGroup="g1">
        <asp:ListItem>select id</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
        runat="server" ControlToValidate="empid" ErrorMessage="*" InitialValue="select id" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
            <td style="width: 100px">
    <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click"
        Text="View" ValidationGroup="g1" /></td>
            <td style="width: 100px">
                <asp:Button ID="viewall" runat="server"
            Font-Bold="True" OnClick="viewall_Click" Text="View all" ValidationGroup="g2" /></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click"  Text="update" Font-Bold="True" /></td>
            <td style="width: 100px">
    
    <asp:Button ID="del" runat="server" OnClick="del_Click" OnClientClick="javascript:return f1()"   Text="Delete" Font-Bold="True" /></td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" />
        <EditRowStyle BackColor="#2461BF" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
    <asp:GridView ID="GridView2" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan"
        BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <FooterStyle BackColor="Tan" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
    </asp:GridView>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Font-Bold="True" OnClick="Button3_Click"
        Text="Adminpre" />
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Underline="True"
        ForeColor="#FF0066" NavigateUrl="~/employee/empprelvs.aspx">Emp</asp:HyperLink>
    
</asp:Content>


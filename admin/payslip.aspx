<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="payslip.aspx.cs" Inherits="admin_delete_an_emp" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript" >
function check()
{
 var s= document.getElementById('<%=sal.ClientID%>').value;
 var a= document.getElementById('<%=advance.ClientID%>').value;
 var i= document.getElementById('<%=incentiv.ClientID%>').value;

 var m=Number(s)+Number(a)+Number(i);
 
 document.getElementById('<%=netsal.ClientID%>').innerText=m;
 
// return false;
}

</script>
    <div style="text-align: left">
        <table width="90%">
            <tr>
                <td style="width: 100px; height: 36px;">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Employee Id"></asp:Label></td>
                <td style="width: 119px; height: 36px;">
                    <asp:DropDownList ID="Idemp" runat="server" AppendDataBoundItems="True" AutoPostBack="True" Font-Bold="True" OnSelectedIndexChanged="Idemp_SelectedIndexChanged">
                        <asp:ListItem>Select Id</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px; height: 36px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Idemp"
                        ErrorMessage="req"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Id already exist" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="EName"></asp:Label></td>
                <td style="width: 119px">
                    <asp:TextBox ID="ename" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Salary"></asp:Label></td>
                <td style="width: 119px">
                    <asp:TextBox ID="sal" runat="server" MaxLength="5"></asp:TextBox></td>
                <td style="width: 100px">
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="sal"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="sal" ErrorMessage="enter 3000-50000"
                        MaximumValue="50000" MinimumValue="3000" Font-Size="10pt" Type="Integer"></asp:RangeValidator></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Advances"></asp:Label></td>
                <td style="width: 119px">
                    <asp:TextBox ID="advance" runat="server" MaxLength="4"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="advance"
                        ErrorMessage="enter 100-2000" MaximumValue="2000" MinimumValue="100" Font-Size="10pt" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="advance"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px;">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Incentives"></asp:Label></td>
                <td style="width: 119px; height: 26px;">
                    <asp:TextBox ID="incentiv" runat="server" MaxLength="4"  onkeyup="return check();"></asp:TextBox></td>
                <td style="width: 100px; height: 26px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="incentiv"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="incentiv"
                        ErrorMessage="enter 100-1000" MaximumValue="1000" MinimumValue="100" Font-Size="10pt" Type="Integer"></asp:RangeValidator></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Net Salary"></asp:Label></td>
                <td style="width: 119px">
                    <asp:TextBox ID="netsal" runat="server" MaxLength="5"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Date"></asp:Label></td>
                <td  width="150">
                    <asp:DropDownList ID="dd" runat="server" Font-Bold="True" style="position: static">
                        <asp:ListItem>dd</asp:ListItem>
                    </asp:DropDownList><asp:DropDownList ID="mm" runat="server" Font-Bold="True" style="position: static">
                        <asp:ListItem>mm</asp:ListItem>
                    </asp:DropDownList><asp:DropDownList ID="yy" runat="server" Font-Bold="True" style="position: static">
                        <asp:ListItem>yy</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px; height: 26px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="dd"
                        ErrorMessage="*" InitialValue="dd"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="mm"
                        ErrorMessage="*" InitialValue="mm"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="yy"
                        ErrorMessage="*" Font-Bold="True" InitialValue="yy"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                </td>
                <td style="width: 119px; height: 21px">
                    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" Font-Bold="True" />
                    &nbsp; &nbsp;</td>
                <td style="width: 100px; height: 21px">
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" Font-Bold="True"
                        OnClick="Button1_Click" Style="position: static" Text="Clear" />
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="#990066"
                        NavigateUrl="~/admin/adminprelvs.aspx">Home</asp:HyperLink></td>
            </tr>
        </table>
    </div>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Label
        ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#CC3366"
        Text="Salary is Successfully inserted" Visible="False"></asp:Label>

</asp:Content>


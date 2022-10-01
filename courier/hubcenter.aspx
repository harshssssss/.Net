<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="hubcenter.aspx.cs" Inherits="courier_hubrates" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:Panel ID="Panel1" runat="server" Height="453px" BackColor="#66CCFF" Width="779px"><br />
    <br /><br />
        <br>
        <br>
        <br></br>
        <table align="center" style="width: 90%; height: 152px;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="HubIdNo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="hubid" runat="server" AutoPostBack="True" OnTextChanged="hubid_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Hub Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="hname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Phone No"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="hphno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="FaxNo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="hfaxno" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="weight"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="weight" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Rate"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="hrate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="state" runat="server" Height="22px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="city" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="haddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="hubid" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="city" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="haddress" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="hfaxno" ErrorMessage="*"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="hname" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="hphno" ErrorMessage="*"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="hrate" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="state" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="weight" ErrorMessage="*"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="hubid" ErrorMessage="eneter correct value" 
            ValidationExpression="\d{3}"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="hfaxno" ErrorMessage="faxno invalid" 
            ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="hphno" ErrorMessage="phno invalid" 
            ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ControlToValidate="weight" ErrorMessage="Incorect weight" 
            ValidationExpression="\d{3}"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
            ControlToValidate="hrate" ErrorMessage="enter correct rate" 
            ValidationExpression="\d{3}"></asp:RegularExpressionValidator>
        <br />
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="submit" runat="server" onclick="submit_Click" Text="Sumit" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="clear" runat="server" CausesValidation="False" 
            onclick="clear_Click" Text="Clear" style="position: static;" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/courier/viewhub.aspx">View</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/courier/courierprelvs.aspx">Back</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br></br>
        &nbsp;
        
        
    </asp:Panel>
    
</asp:Content>


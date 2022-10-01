<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="incomingdtls.aspx.cs" Inherits="courier_incomingdtls" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="396px" BackColor="#FF9966" Width="780px">
    <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="14pt"
            Font-Underline="True" ForeColor="#666666" Text="Incoming Details"></asp:Label><br />
        <br />
        <br />
        <table align="center" style="width: 100%">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Parcel No"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ipno" runat="server" AutoPostBack="True" OnTextChanged="ipno_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="idate" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Time"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="itime" runat="server"></asp:TextBox>
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
                    <asp:Label ID="Label4" runat="server" Text="State"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="istate" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="city" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Area"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="area" runat="server"></asp:TextBox>
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
                    <asp:Label ID="Label7" runat="server" Text="Source"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="isource" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Destinaton"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="idestination" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="CourierBy"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="courierby" runat="server"></asp:TextBox>
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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ipno"
            ErrorMessage="*"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="idate"
            ErrorMessage="*"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="itime"
            ErrorMessage="*"></asp:RequiredFieldValidator>&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="istate"
            ErrorMessage="*"></asp:RequiredFieldValidator>
        &nbsp; &nbsp; &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="city"
            ErrorMessage="*"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="area"
            ErrorMessage="*"></asp:RequiredFieldValidator>
        &nbsp; &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="isource"
            ErrorMessage="*"></asp:RequiredFieldValidator>
        &nbsp; &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="idestination"
            ErrorMessage="*"></asp:RequiredFieldValidator>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="courierby"
            ErrorMessage="*"></asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ipno"
            ErrorMessage="use 3 digits only" ValidationExpression="\d{3}"></asp:RegularExpressionValidator>&nbsp;
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="idate"
            ErrorMessage="Enter yy/mm/dd fromat" MaximumValue="2009/12/31" MinimumValue="2009/05/05"
            Type="Date"></asp:RangeValidator>
        &nbsp; &nbsp;
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="itime"
            ErrorMessage="enter correct time" MaximumValue="24.00" MinimumValue="0.00" Type="Double"></asp:RangeValidator><br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="sub" runat="server" onclick="sub_Click" Text="Submit" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button ID="clear" runat="server" Text="Clear" CausesValidation="False" 
            onclick="clear_Click" style="width: 46px" />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/courier/courierprelvs.aspx" Font-Bold="True">Back</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/courier/viewincomingt.aspx" Font-Bold="True">View</asp:HyperLink><br />
        &nbsp;&nbsp;
        
    </asp:Panel>
 <br />
</asp:Content>


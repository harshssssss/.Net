<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="nondeliverydtls.aspx.cs" Inherits="courier_nondeliverydtls" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellpadding="0" cellspacing="0" 
        style="width: 100%; border: 2px solid #000000; background-color: #FF9900; height: 362px;">
        <tr>
            <td colspan =6 style="height: 62px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Non  Delivery" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Parcel No"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="npno" runat="server" AutoPostBack="True" OnTextChanged="npno_TextChanged"></asp:TextBox>
            </td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Date"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="ndate" runat="server"></asp:TextBox>
            </td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Time"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="ntime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan =5>
                &nbsp;</td>
            <td rowspan =5>
                <asp:Image ID="Image1" runat="server" Height="147px" ImageUrl="~/courier/images/courier_delivery.jpg" Width="159px" />
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label5" runat="server" Text="In Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="nindate" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Forward Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="nfdate" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            
        </tr>
        <tr>
            <td colspan =5>
                &nbsp;</td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Deatination"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ndaestin" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Source"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="nsource" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            
        </tr>
        <tr>
            <td colspan =5>
                &nbsp;</td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Cause"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ncause" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Any Other Cause"></asp:Label>
            </td>
            <td colspan =3 rowspan =2>
                <asp:TextBox ID="nothercause" runat="server" TextMode="MultiLine" Width="253px"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
        <td colspan =3></td>
        </tr>
        <tr>
            <td colspan =6 style="height: 19px">
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="npno"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ndate"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ntime"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="nindate"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="nfdate"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ndaestin"
                    ErrorMessage="*"></asp:RequiredFieldValidator>&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="nsource"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ncause"
                    ErrorMessage="*"></asp:RequiredFieldValidator>&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="nothercause"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ndate"
                    ErrorMessage="Error in Date" MaximumValue="2009/12/02" MinimumValue="2009/01/03"
                    Type="Date"></asp:RangeValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="ntime"
                    ErrorMessage="Error intime" MaximumValue="24.00" MinimumValue="0.00" Type="Double"></asp:RangeValidator>
                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="nfdate"
                    ErrorMessage="enter in yy/mm/dd formate" MaximumValue="2009/12/31" MinimumValue="2009/01/01"
                    Type="Date"></asp:RangeValidator>
                &nbsp; &nbsp;
                <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="nindate"
                    ErrorMessage="Error in indate" MaximumValue="2009/12/31" MinimumValue="2009/01/01"
                    Type="Date"></asp:RangeValidator></td>
            
        </tr>
        <tr>
            <td colspan =6>
            
                <table cellpadding="0" cellspacing="0" style="width: 100%">
                    <tr>
                        <td style="height: 24px">
                            <asp:Button ID="sub" runat="server" Text="Submit" onclick="sub_Click" />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="npno"
                                ErrorMessage="use 3 digits" ValidationExpression="\d{3}"></asp:RegularExpressionValidator></td>
                        <td style="height: 24px">
                            <asp:Button ID="vie" runat="server" Text="View" CausesValidation="False" 
                                PostBackUrl="~/courier/viewnondel.aspx" />
                        </td>
                        <td style="height: 24px">
                            <asp:Button ID="Button3" runat="server" Text="Clear" CausesValidation="False" 
                                onclick="Button3_Click" />
                        </td>
                        <td style="height: 24px">
                            <asp:Button ID="Button4" runat="server" Text="Back" CausesValidation="False" 
                                PostBackUrl="~/courier/courierprelvs.aspx" />
                        </td>
                    </tr>
                </table>
            
            </td>
            
        </tr>
            </table>
</asp:Content>


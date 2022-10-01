<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="pickupcentre.aspx.cs" Inherits="courier_pickupcentre" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 100%; background-color: #EEDE87">
        <tr><td>
            &nbsp;</td>
            
        </tr>
        <tr>
            <td colspan ="6">
                <asp:Label ID="Label1" runat="server" Text="Pickup Center"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="ParcelNo"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="pickpno" runat="server"></asp:TextBox>
            </td>
            <td id="Date">
                <asp:Label ID="Label3" runat="server" Text="Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="pdate" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Time"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ptime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan ="6">
                &nbsp;</td>
            
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="pname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="IdProof"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="idproof" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Idno"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="idno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan ="6">
                &nbsp;</td>
            
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td rowspan ="3">
                <asp:TextBox ID="padrs" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Phone No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="pphno" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px">
                <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
            </td>
            
            <td style="height: 21px">
                &nbsp;</td>
            <td style="height: 21px">
                &nbsp;</td>
            <td style="height: 21px">
                &nbsp;</td>
            <td style="height: 21px">
                &nbsp;</td>
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
        </tr>
        <tr>
            <td colspan ="6" style="height: 21px">
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pickpno"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pname"
                    ErrorMessage="*"></asp:RequiredFieldValidator>&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="padrs"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pdate"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="idproof"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="pphno"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ptime"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="idno"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="pickpno"
                    ErrorMessage="use 3 digirs for pno" ValidationExpression="\d{3}"></asp:RegularExpressionValidator>
                &nbsp; &nbsp;&nbsp;
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ptime"
                    ErrorMessage="Enter correct time" MaximumValue="24.00" MinimumValue="0.00" Type="Double"></asp:RangeValidator>&nbsp;
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="pdate"
                    ErrorMessage="enter yy/mm/dd formate" MaximumValue="2009/12/30" MinimumValue="2009/01/01"
                    Type="Date"></asp:RangeValidator>&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="pphno"
                    ErrorMessage="phno invalid" ValidationExpression="\d{10}"></asp:RegularExpressionValidator></td>
            
        </tr>
        <tr>
            <td colspan ="6">
            
                <table cellpadding="0" cellspacing="0" style="width: 100%">
                    <tr>
                        <td style="height: 24px">
                            <asp:Button ID="sub" runat="server" Text="Submit" onclick="Button1_Click" />
                        </td>
                        <td style="height: 24px">
                            <asp:Button ID="Button2" runat="server" Text="View" CausesValidation="False" 
                                onclick="Button2_Click" PostBackUrl="~/courier/viewpick.aspx" />
                        </td>
                        <td style="height: 24px">
                            <asp:Button ID="clear" runat="server" Text="Clear" CausesValidation="False" 
                                onclick="clear_Click" />
                        </td>
                        <td style="height: 24px">
                            <asp:Button ID="Button4" runat="server" Text="Back" PostBackUrl="~/courier/courierprelvs.aspx" CausesValidation="False" />
                        </td>
                    </tr>
                </table>
            
            </td>
            
        </tr>
    </table>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="outreturns.aspx.cs" Inherits="courier_outreturns" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table  width ="100%">
        <tr>
            <td colspan=6 align =center>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" 
                    Text="OutReturns"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan =5>
                &nbsp;</td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Parcel No:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="opno" runat="server" AutoPostBack="True" OnTextChanged="opno_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Date:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="odate" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Time:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="otime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan =6 style="height: 21px">
                &nbsp;</td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Status"></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Status" 
                    Text="Delivered" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Status" 
                    Text="Non Delivered" />
            </td>
            <td colspan =3>
                &nbsp;</td>
            
        </tr>
        <tr>
            <td colspan =6>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan =3>
                <table style="width: 100%; border-color: Black" border=2>
                    <tr>
                        <td colspan =2>
                            <asp:Label ID="Label7" runat="server" Text="Delevered"></asp:Label>
                        </td>
                        </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Booked Date:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="obookeddate" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan =2>
                            &nbsp;</td>
                        
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Delivered Date:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="odelivereddate" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan =2 style="height: 23px">
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="booked"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="expectedda"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="obookeddate"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="odate"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="odelivereddate"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="opno"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="otime"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="reason"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="opno"
                                ErrorMessage="use 3 digits only" ValidationExpression="\d{3}"></asp:RegularExpressionValidator></td>
                        </tr>
                </table>
            </td>
            <td colspan =3>
                <table cellpadding="0" cellspacing="0" 
                    style="width: 100%; height: 135px; border: 2px solid #222222">
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Label11" runat="server" Text="NonDelivered"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 24px">
                            <asp:Label ID="Label12" runat="server" Text="Booked Date"></asp:Label>
                        </td>
                        <td style="height: 24px">
                            <asp:TextBox ID="booked" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text="ExpectedDelivery Date"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="expectedda" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text="Reason"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="reason" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="odate"
                    ErrorMessage="Enter yy/mm/dd formate" MaximumValue="2009/12/31" MinimumValue="2009/09/09"
                    Type="Date"></asp:RangeValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="otime"
                    ErrorMessage="enter correct time" MaximumValue="24.00" MinimumValue="0.00" Type="Double"></asp:RangeValidator></td>
            
        </tr>
        <tr>
            <td colspan =6 style="height: 21px">
                &nbsp;<asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="obookeddate"
                    ErrorMessage="Enter correct book date" MaximumValue="2009/12/01" MinimumValue="2009/01/01"
                    Type="Date"></asp:RangeValidator>
                &nbsp;
                <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="odelivereddate"
                    ErrorMessage="enter delivey date" MaximumValue="2009/12/31" MinimumValue="2009/01/01"
                    Type="Date"></asp:RangeValidator>
                <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="booked"
                    ErrorMessage="Error in non booked date" MaximumValue="2009/12/30" MinimumValue="2009/01/01"
                    Type="Date"></asp:RangeValidator>&nbsp;
                <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="expectedda"
                    ErrorMessage="Error in expected date" MaximumValue="2009/12/30" MinimumValue="2009/01/01"
                    Type="Date"></asp:RangeValidator></td>
            
        </tr>
        <tr>
            <td colspan =2 align =right> 
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
            </td>
            <td colspan =2 align =center>
                <asp:Button ID="Button2" runat="server" Text="Clear" onclick="Button2_Click" CausesValidation="False" />
            </td>
            <td colspan =2 align =left>
                <asp:Button ID="Button3" runat="server" Text="Back" onclick="Button3_Click" 
                    PostBackUrl="~/courier/courierprelvs.aspx" CausesValidation="False" />
            </td>
            
        </tr>
        
    </table>
</asp:Content>


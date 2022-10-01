<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="emplogin.aspx.cs" Inherits="employee_emplogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" style="height: 300px">
   <tr >
   <td rowspan="3" style="width: 216px">
       <img src="../admin/images/sending.jpg" style="width: 254px; height: 398px; border-left-color: #006666; border-bottom-color: #006666; border-top-style: solid; border-top-color: #006666; border-right-style: solid; border-left-style: solid; border-right-color: #006666; border-bottom-style: solid;" /></td>
   <td style="width: 274px; vertical-align: top;">
       <img src="../admin/images/courier-and-delivery-services.jpg" style="width: 353px;
           height: 108px; border-left-color: #006666; border-bottom-color: #006666; border-top-style: solid; border-top-color: #006666; border-right-style: solid; border-left-style: solid; border-right-color: #006666; border-bottom-style: solid;" /></td>
       <td rowspan="3" style="width: 254px">
           <img src="../admin/images/sidepic_couriers.jpg" style="width: 234px; height: 402px" /></td>
   </tr>
   <tr >
   <td style="width: 274px; height: 144px; vertical-align: text-top; background-color: #ccccff; border-left-color: #336666; border-bottom-color: #336666; border-top-style: solid; border-top-color: #336666; border-right-style: solid; border-left-style: solid; border-right-color: #336666; border-bottom-style: solid;">
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial CE" 
           Text="Employee Login" BorderColor="#804000" BorderStyle="Groove"></asp:Label>
       <br />
       <br />
       <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="UserId:"></asp:Label>
       &nbsp; &nbsp; &nbsp;<asp:TextBox ID="txtuid" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuid"
           ErrorMessage="*"></asp:RequiredFieldValidator><br />
       <br />
       <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Password"></asp:Label>
       &nbsp;
       <asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwd"
           ErrorMessage="*"></asp:RequiredFieldValidator><br />
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp;<br />
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       &nbsp; &nbsp; &nbsp;<asp:Button ID="signin" runat="server" Text="SignIn" Font-Bold="True" OnClick="signin_Click" /><br />
   </td>
   </tr>
   <tr >
   <td style="width: 274px; height: 76px;" rowspan="3">
       <img src="../admin/images/image-main.jpg" style="border-left-color: #336666; border-bottom-color: #336666;
           width: 358px; border-top-style: solid; border-top-color: #336666; border-right-style: solid;
           border-left-style: solid; height: 80px; border-right-color: #336666; border-bottom-style: solid" /></td>
   </tr>
   </table>
</asp:Content>


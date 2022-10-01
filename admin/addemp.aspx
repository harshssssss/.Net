<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="addemp.aspx.cs" Inherits="admin_adminlogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table width="60%" height="180%">
            <tr>
                <td style="height: 20px; text-align: left; width: 299px;">
                    <asp:Label ID="eid" runat="server" Text="EmpID" Font-Bold="True"></asp:Label></td>
                <td style="text-align: left; height: 20px; width: 437px;" >
                    <asp:TextBox ID="empid" runat="server"></asp:TextBox></td>
                <td style="height: 20px; width: 134px;" >
                </td>
            </tr>
            <tr>
                <td style="text-align: left; width: 299px;">
                    <asp:Label ID="Name" runat="server" Text="Name" Font-Bold="True"></asp:Label></td>
                <td style="text-align: left; width: 437px;" >
                    <asp:TextBox ID="ename" runat="server"></asp:TextBox></td>
                <td style="width: 134px; text-align: left;" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ename"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: left; width: 299px;"  >
                    <asp:Label ID="pwd" runat="server" Text="Password" Font-Bold="True"></asp:Label></td>
                <td style="text-align: left; width: 437px;" >
                    <asp:TextBox ID="epwd" runat="server" TextMode="Password"></asp:TextBox></td>
                <td style="width: 134px; text-align: left;" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="epwd"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: left; width: 299px;"  >
                    <asp:Label ID="confirm" runat="server" Text="Confirm Password" Font-Bold="True"></asp:Label></td>
                <td style="text-align: left; width: 437px;" >
                    <asp:TextBox ID="confirmpwd" runat="server" TextMode="Password"></asp:TextBox></td>
                <td style="width: 134px; text-align: left;" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="confirmpwd"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password not match" ControlToCompare="epwd" ControlToValidate="confirmpwd"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td style="text-align: left; height: 28px; width: 299px;"  >
                    <asp:Label ID="dob" runat="server" Text="Date of Birth" Font-Bold="True"></asp:Label></td>
                <td style="text-align: left; width: 437px; height: 28px;" >
                    <asp:DropDownList ID="mm" runat="server" Font-Bold="True">
                        <asp:ListItem>mm</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="dd" runat="server" Font-Bold="True">
                        <asp:ListItem>dd</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="yyyy" runat="server" Font-Bold="True">
                        <asp:ListItem>yy</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 134px; height: 28px; text-align: left;" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="mm"
                        ErrorMessage="*" InitialValue="mm"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="dd"
                        ErrorMessage="*" InitialValue="dd"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="yyyy" InitialValue="yy"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: left; width: 299px; height: 22px;"  >
                    <asp:Label ID="gender" runat="server" Text="gender" Font-Bold="True"></asp:Label></td>
                <td style="text-align: left; width: 437px; height: 22px;" >
                    <asp:RadioButton ID="male" runat="server" Checked="True" GroupName="g1" Text="Male" Font-Bold="True" />
                    <asp:RadioButton ID="female" runat="server" GroupName="g1" Text="Female" Font-Bold="True" /></td>
                <td style="width: 134px; height: 22px;" >
                </td>
            </tr>
            <tr>
                <td style="text-align: left; width: 299px;" >
                    <asp:Label ID="adrs" runat="server" Text="Address" Font-Bold="True"></asp:Label></td>
                <td style="text-align: left; width: 437px;" >
                    <asp:TextBox ID="addrs" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                <td style="width: 134px; text-align: left;" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="addrs"
                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: left; width: 299px;"  >
                    <asp:Label ID="email" runat="server" Text="Email ID" Font-Bold="True"></asp:Label></td>
                <td style="text-align: left; width: 437px;" >
                    <asp:TextBox ID="emailid" runat="server"></asp:TextBox></td>
                <td style="width: 134px; text-align: left;" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="emailid"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailid"
                        ErrorMessage="ID is invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="text-align: left; width: 299px;" >
                    <asp:Label ID="phno" runat="server" Text="Phone No" Font-Bold="True"></asp:Label></td>
                <td style="text-align: left; width: 437px;" >
                    <asp:TextBox ID="ephno" runat="server"></asp:TextBox></td>
                <td style="width: 134px; text-align: left;" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ephno"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ephno"
                        ErrorMessage="phno invalid" ValidationExpression="\d{10}"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 299px; height: 26px;"  >
                </td>
                <td style="width: 437px; height: 26px;" >
                    <asp:Button ID="submit" runat="server" Text="Submit" Font-Bold="True" OnClick="submit_Click" />
                    <asp:Button ID="clear" runat="server" Text="Clear" Font-Bold="True" CausesValidation="False" OnClick="clear_Click" /></td>
                <td style="width: 134px; height: 26px;" >
                </td>
            </tr>
        </table>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;
        <asp:Button ID="Button1" runat="server" CausesValidation="False" Font-Bold="True"
            OnClick="Button1_Click" Text="Back" /></div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
</asp:Content>


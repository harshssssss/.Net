<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="bookingdtls.aspx.cs" Inherits="courier_bookingdtls" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[



// ]]>
</script>

    <asp:Panel ID="Panel1" runat="server" Height="1px" Style="background-color: #99cccc"
        Width="769px">
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label21"
            runat="server" Font-Bold="True" Font-Italic="True" Font-Size="12pt" Font-Underline="True"
            ForeColor="#990066" Text="BOOKING FORM"></asp:Label><br />
        <br />
        <br />
        <table width="100%">
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Text="Parcel No"></asp:Label></td>
                <td style="width: 115px">
                    <asp:TextBox ID="Pno" runat="server" AutoPostBack="True" OnTextChanged="Pno_TextChanged"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="dat" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:Label ID="Label3" runat="server" Text="Time"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="btime" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label4" runat="server" Text="bookedby"></asp:Label></td>
                <td style="width: 115px">
                    <asp:DropDownList ID="bookby" runat="server">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>employy</asp:ListItem>
                        <asp:ListItem>customer</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                    <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="name" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:Label ID="Label6" runat="server" Text="State"></asp:Label></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="state" runat="server">
                        <asp:ListItem>select state</asp:ListItem>
                        <asp:ListItem>Up</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>MP</asp:ListItem>
                        <asp:ListItem>kolkata</asp:ListItem>
                        <asp:ListItem>orrisssa</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Andrapredesh</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 24px;">
                </td>
                <td style="width: 115px; height: 24px;">
                    <asp:Label ID="Label7" runat="server" Text="City"></asp:Label></td>
                <td style="width: 100px; height: 24px;">
                    <asp:DropDownList ID="city" runat="server">
                        <asp:ListItem>select city</asp:ListItem>
                        <asp:ListItem>hyderabad</asp:ListItem>
                        <asp:ListItem>vijayavada</asp:ListItem>
                        <asp:ListItem>guntur</asp:ListItem>
                        <asp:ListItem>nellure</asp:ListItem>
                        <asp:ListItem>karimnagar</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px; height: 24px;">
                    <asp:Label ID="Label8" runat="server" Text="Area"></asp:Label></td>
                <td style="width: 100px; height: 24px;">
                    <asp:DropDownList ID="area" runat="server">
                        <asp:ListItem>select area</asp:ListItem>
                        <asp:ListItem>ameerpet</asp:ListItem>
                        <asp:ListItem>King Koti</asp:ListItem>
                        <asp:ListItem>Lbnagar</asp:ListItem>
                        <asp:ListItem>Kukatpally</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px; height: 24px;">
                </td>
            </tr>
        </table>
        <div style="text-align: left">
            &nbsp; &nbsp; &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="Pno" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Pno"
                ErrorMessage="enter 2 values" ValidationExpression="\d{2}"></asp:RegularExpressionValidator>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="dat"
                ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="btime"
                ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="name"
                ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="bookby"
                ErrorMessage="*" InitialValue="select"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="state"
                ErrorMessage="*" InitialValue="select state"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="city"
                ErrorMessage="*" InitialValue="select city"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="area"
                ErrorMessage="*" InitialValue="select area"></asp:RequiredFieldValidator>
            &nbsp; &nbsp; &nbsp; &nbsp; 
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="dat" ErrorMessage="Enter yy/mm/dd formate "
                MaximumValue="2010/12/30" MinimumValue="2009/05/01"></asp:RangeValidator>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;<asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="btime"
                ErrorMessage="enter 0-24" MaximumValue="24.00" MinimumValue="0.00" Type="Double"></asp:RangeValidator>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp; &nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <div style="text-align: left">
                <table style="z-index: 101; left: 532px; width: 265px; position: absolute; top: 635px;
                    height: 203px">
                    <tr>
                        <td colspan="2" style="height: 21px">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="12pt" Text="To  Address"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Label ID="Label14" runat="server" Text="Name"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="dname" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label15" runat="server" Text="Address"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:TextBox ID="daddress" runat="server" Height="55px" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 30px;">
                            <asp:Label ID="Label16" runat="server" Text="Phone No"></asp:Label></td>
                        <td style="width: 100px; height: 30px;">
                            <asp:TextBox ID="dphno" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 21px">
                            <asp:Label ID="Label17" runat="server" Text="Destination"></asp:Label>
                        </td>
                        <td style="width: 100px; height: 21px">
                            <asp:TextBox ID="destination" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </div>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="sname"
                ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="saddress"
                ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="sphno"
                ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="source"
                ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="sphno"
                ErrorMessage="phno invalid" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="dname"
                ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="daddress"
                ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="dphno"
                ErrorMessage="*"></asp:RequiredFieldValidator>&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="dphno"
                ErrorMessage="phno invalid" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <div style="text-align: left">
                <table id="TABLE1" style="z-index: 102; left: 165px; position: absolute; top: 883px" onclick="return TABLE1_onclick()">
                    <tr>
                        <td style="width: 100px">
            <asp:Label ID="Label19" runat="server" Text="Weight"></asp:Label></td>
                        <td style="width: 100px">
            <asp:TextBox ID="weight" runat="server"></asp:TextBox>kg</td>
                        <td style="width: 100px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="weight"
                                ErrorMessage="*"></asp:RequiredFieldValidator></td>
                        <td style="width: 100px">
            <asp:Label ID="Label20" runat="server" Text="Amount"></asp:Label></td>
                        <td style="width: 100px">
            <asp:TextBox ID="amount" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="weight"
                                ErrorMessage="enter correct weight use 3 digits" ValidationExpression="\d{3,}" Width="120px"></asp:RegularExpressionValidator></td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="amount"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 100px">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="amount"
                                ErrorMessage="enter correcta amt use 3 digits" ValidationExpression="\d{2,}" Width="115px"></asp:RegularExpressionValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 88px;">
                        </td>
                        <td style="width: 100px; height: 88px;">
            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" /></td>
                        <td style="width: 100px; height: 88px;">
                            <asp:Button ID="view" runat="server" OnClick="view_Click" Text="view" CausesValidation="False" /></td>
                        <td style="width: 100px; height: 88px;">
            <asp:Button ID="clear" runat="server" Text="Clear" CausesValidation="False" OnClick="clear_Click" /></td>
                        <td style="width: 100px; height: 88px;">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp;
                            <asp:Button ID="update" runat="server"
                                Text="update" CausesValidation="False" OnClick="update_Click" />
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/courier/courierprelvs.aspx">Back</asp:HyperLink></td>
                    </tr>
                </table>
            </div>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;
            <br />
            <table style="z-index: 100; left: 148px; position: absolute; top: 632px; height: 208px; width: 266px;">
                <tr>
                    <td colspan="2" style="height: 23px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="12pt" Text="From Address"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label10" runat="server" Text="Name"></asp:Label></td>
                    <td style="width: 62px">
                        <asp:TextBox ID="sname" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label11" runat="server" Text="Address"></asp:Label></td>
                    <td style="width: 62px">
                        <asp:TextBox ID="saddress" runat="server" Height="61px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label12" runat="server" Text="PhoneNo"></asp:Label></td>
                    <td style="width: 62px">
                        <asp:TextBox ID="sphno" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label13" runat="server" Text="Source"></asp:Label></td>
                    <td style="width: 62px">
                        <asp:TextBox ID="source" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            <div style="text-align: left">
                &nbsp;</div>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <div style="text-align: right">
                &nbsp;</div>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        </div>
    </asp:Panel>
</asp:Content>


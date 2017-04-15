<%@ Page Title="" Language="C#" MasterPageFile="~/DataMiningMasterPage.master" AutoEventWireup="true" CodeFile="SignUpDm.aspx.cs" Inherits="SignUpDm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <h2 style="color: #000000; text-align: center; text-decoration: underline">!!! Register Here !!!</h2>
    <p style="color: #000000; text-align: center; text-decoration: underline">
        &nbsp;</p>
    <p style="color: #000000; text-align: center; text-decoration: underline">
        &nbsp;</p>
    <table align="center" cellpadding="3" style="border: medium groove #000000; width: 555px; height: 182px">
        <tr>
            <td style="border: medium groove #000000; width: 210px; height: 28px;">
                <h4 class="auto-style3" style="width: 207px; text-align: center">Name</h4>
            </td>
            <td style="border: medium groove #000000; width: 324px; height: 28px;">
                <asp:TextBox ID="TextBoxName" runat="server" Height="28px" Width="239px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" ErrorMessage="Enter the Name" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="reg"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="border: medium groove #000000; width: 210px;">
                <h4 class="auto-style3" style="width: 207px; text-align: center">Password</h4>
            </td>
            <td style="border: medium groove #000000; width: 324px;">
                <asp:TextBox ID="TextBoxPassword" runat="server" Height="31px" TextMode="Password" Width="239px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Enter the Password" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="reg"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="border: medium groove #000000; width: 210px;">
                <h4 class="auto-style3" style="width: 207px; text-align: center">Confirm Password</h4>
            </td>
            <td style="border: medium groove #000000; width: 324px;">
                <asp:TextBox ID="TextBox4" runat="server" Height="31px" TextMode="Password" Width="239px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter the Password" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="reg"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBoxPassword" ErrorMessage="Enter Password should be same" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="reg"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="border: medium groove #000000; width: 210px; height: 31px;">
                <h4 style="color: #000000; text-align: center">Address</h4>
            </td>
            <td style="border: medium groove #000000; width: 324px; height: 31px;">
                <asp:TextBox ID="TextBoxAddress" runat="server" Height="46px" TextMode="MultiLine" Width="255px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxAddress" ErrorMessage="Enter the Address" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="reg"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="border: medium groove #000000; width: 210px; height: 31px;">
                <h4 style="color: #000000; text-align: center">Mobile No</h4>
            </td>
            <td style="border: medium groove #000000; width: 324px; height: 31px;">
                <asp:TextBox ID="TextBoxMobile" runat="server" Height="31px" Width="239px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxMobile" ErrorMessage="Enter the Mobile" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="reg"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxMobile" ErrorMessage="Ente The 10 digit Mobile No" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="border: medium groove #000000; width: 210px; height: 31px;">
                <h4 style="color: #000000; text-align: center">Email</h4>
            </td>
            <td style="border: medium groove #000000; width: 324px; height: 31px;">
                <asp:TextBox ID="TextBoxEmail" runat="server" Height="31px" Width="239px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Enter the Email" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="reg"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Enter The Correct Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="reg"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="border: medium groove #000000; width: 210px;">&nbsp;</td>
            <td style="border: medium groove #000000; width: 324px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonSubmit" runat="server" Height="40px" Text="Submit" Width="132px" OnClick="Button1_Click" ValidationGroup="reg" />
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <p style="color: #000000; text-align: center; text-decoration: underline">
        &nbsp;</p>


</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminDataminingMasterPage.master" AutoEventWireup="true" CodeFile="AddCatg.aspx.cs" Inherits="Admin_AddCatg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <h2 style="color: #000000; text-align: center; text-decoration: underline">Add New Category</h2>
<p style="color: #000000; text-align: center; text-decoration: underline">
    &nbsp;</p>
<p style="color: #000000; text-align: center; text-decoration: underline">
    &nbsp;</p>
<table align="center" cellpadding="3" style="border: medium groove #000000; width: 555px; height: 182px">
    <tr>
        <td style="border: medium groove #000000; width: 210px;">
            <h4 class="auto-style3" style="width: 207px; text-align: center">Category Name</h4>
        </td>
        <td style="border: medium groove #000000; width: 324px;">
            <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="309px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="border: medium groove #000000; width: 210px; height: 71px;">
            <h4 style="color: #000000; text-align: center">Description</h4>
        </td>
        <td style="border: medium groove #000000; width: 324px; height: 71px;">
            <asp:TextBox ID="TextBox2" runat="server" Height="41px" TextMode="MultiLine" Width="306px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="border: medium groove #000000; width: 210px;">&nbsp;</td>
        <td style="border: medium groove #000000; width: 324px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Submit" Width="132px" />
            &nbsp;</td>
    </tr>
</table>
<br />
<br />
<p style="color: #000000; text-align: center; text-decoration: underline">
    &nbsp;</p>


</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminDataminingMasterPage.master" AutoEventWireup="true" CodeFile="AddSubCatg.aspx.cs" Inherits="Admin_AddSubCatg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <h2 style="color: #000000; text-align: center; text-decoration: underline">Add New Sub Category</h2>
    <p style="color: #000000; text-align: center; text-decoration: underline">
        &nbsp;</p>
    <p style="color: #000000; text-align: center; text-decoration: underline">
        &nbsp;</p>
    <table align="center" cellpadding="3" style="border: medium groove #000000; width: 555px; height: 182px">
        <tr>
            <td style="border: medium groove #000000; width: 210px; height: 28px;">
                <h4 class="auto-style3" style="width: 207px; text-align: center">Category</h4>
            </td>
            <td style="border: medium groove #000000; width: 324px; height: 28px;">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CatgId" Height="48px" Width="265px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecomdatabaseConnectionString %>" SelectCommand="SELECT [CategoryName], [CatgId] FROM [Catg]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="border: medium groove #000000; width: 210px;">
                <h4 class="auto-style3" style="width: 207px; text-align: center">Sub Category Name</h4>
            </td>
            <td style="border: medium groove #000000; width: 324px;">
                <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="239px"></asp:TextBox>
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
                <asp:Button ID="ButtonSubmit" runat="server" Height="40px" Text="Submit" Width="132px" OnClick="Button1_Click" />
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <p style="color: #000000; text-align: center; text-decoration: underline">
        &nbsp;</p>


</asp:Content>


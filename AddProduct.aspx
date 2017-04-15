<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminDataminingMasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Admin_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <h2 style="color: #000000; text-align: center; text-decoration: underline">Add New Category</h2>
    <p style="color: #000000; text-align: center; text-decoration: underline">
        &nbsp;</p>
    <p style="color: #000000; text-align: center; text-decoration: underline">
        &nbsp;</p>
    <table align="center" cellpadding="3" style="border: medium groove #000000; width: 555px; height: 182px">
        <tr>
            <td style="border: medium groove #000000; width: 210px;">
                <h4 class="auto-style3" style="width: 207px; text-align: center">Category</h4>
            </td>
            <td style="border: medium groove #000000; width: 324px;">
                &nbsp;&nbsp;
            
                
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CatgId" Height="16px" Width="205px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecomdatabaseConnectionString %>" SelectCommand="SELECT [CategoryName], [CatgId] FROM [Catg]"></asp:SqlDataSource>
                   
            </td>
        </tr>
        <tr>
            <td style="border: medium groove #000000; width: 210px;">
                <h4 class="auto-style3" style="width: 207px; text-align: center">Sub Category</h4>
            </td>
            <td style="border: medium groove #000000; width: 324px;">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="SubCategoryName" DataValueField="SubCatgId" Height="16px" Width="207px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ecomdatabaseConnectionString %>" SelectCommand="SELECT [SubCatgId], [SubCategoryName], [CatgId] FROM [SubCatg] WHERE ([CatgId] = @CatgId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList3" Name="CatgId" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="border: medium groove #000000; width: 210px;">
                <h4 class="auto-style3" style="width: 207px; text-align: center">Product Name</h4>
            </td>
            <td style="border: medium groove #000000; width: 324px;">
                <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="239px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border: medium groove #000000; width: 210px;">
                <h4 class="auto-style3" style="width: 207px; text-align: center">MRP</h4>
            </td>
            <td style="border: medium groove #000000; width: 324px;">
                <asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="239px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border: medium groove #000000; width: 210px;">
                <h4 class="auto-style3" style="width: 207px; text-align: center">Our Price</h4>
            </td>
            <td style="border: medium groove #000000; width: 324px;">
                <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="239px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border: medium groove #000000; width: 210px;">
                <h4 class="auto-style3" style="width: 207px; text-align: center">Brand Name</h4>
            </td>
            <td style="border: medium groove #000000; width: 324px;">
                <asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="239px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border: medium groove #000000; width: 210px;">
                <h4 class="auto-style3" style="width: 207px; text-align: center">Image</h4>
            </td>
            <td style="border: medium groove #000000; width: 324px;">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="33px" Width="243px" />
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
                <asp:Button ID="Button1" runat="server" Height="40px" Text="Submit" Width="132px" OnClick="Button1_Click" />
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
       
</asp:Content>


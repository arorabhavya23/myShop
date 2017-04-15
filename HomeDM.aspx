<%@ Page Title="Home | M Baazar" Language="C#" MasterPageFile="~/DataMiningMasterPage.master" AutoEventWireup="true" CodeFile="HomeDM.aspx.cs" Inherits="HomeDM" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <asp:Panel ID="Panel2" runat="server"   Height="971px" scrollbars="auto" Width="928px" >
        <asp:DataList ID="DataList1" runat="server" CellSpacing="40" DataKeyField="ProdId" DataSourceID="SqlDataSource1" RepeatColumns="3" HorizontalAlign="Center">
            <ItemTemplate>
                <table cellpadding="3" cellspacing="5" style="width: 91%">
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="265px" commandargument='<%# Eval("Prodid") %>' ImageUrl='<%# Eval("image") %>' Width="218px" OnClick="ImageButton2_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Size="10pt" style="color: #000000" Text='<%# Eval("ProductName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Size="10pt" Font-Strikeout="True" style="color: #000000" Text='<%# Eval("MRP") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Size="10pt" style="color: #000000" Text='<%# Eval("OurPrice") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
<asp:ImageButton ID="ImageButton1" runat="server" Height="27px" commandargument='<%# Eval("Prodid") %>' ImageUrl='~/css/images/addtocart.gif' Width="73px" OnClick="ImageButton1_Click" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecomdatabaseConnectionString %>" SelectCommand="SELECT * FROM [NewProduct]"></asp:SqlDataSource>
   
        <br />
        <br />
        <br />

        <br />
        <br />
        <br /><br />
        <br />
         </asp:Panel>
    
</asp:Content>--%>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
</asp:Content>



<%@ Page Title="" Language="C#" MasterPageFile="~/DataMiningMasterPage.master" AutoEventWireup="true" CodeFile="Nokia.aspx.cs" Inherits="Nokia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <asp:Panel ID="Panel2" runat="server"   Height="528px" ScrollBars="Auto">
       <asp:DataList ID="DataList1" runat="server" CellSpacing="45" DataKeyField="ProdId" DataSourceID="SqlDataSource1" RepeatColumns="3">
            <ItemTemplate>
                <table cellpadding="3" cellspacing="5" style="width: 91%">
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="212px" commandargument='<%# Eval("Prodid") %>' ImageUrl='<%# Eval("image") %>' Width="215px" OnClick="ImageButton2_Click" />
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
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecomdatabaseConnectionString %>" SelectCommand="SELECT * FROM [NewProduct] WHERE ([SubCatgId] = '4')"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ecomdatabaseConnectionString %>" SelectCommand="SELECT [ProductName], [MRP], [OurPrice], [Type_of_Product], [image] FROM [MainProduct] where [Brand]='Nokia';"></asp:SqlDataSource>
        
        <br />
        <br />
        <br />

        <br />
        <br />
        <br /><br />
        <br />
         </asp:Panel>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>

</asp:Content>

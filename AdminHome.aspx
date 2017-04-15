<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminDataminingMasterPage.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Admin_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <h1 style="text-align: center; font-size: 14px">
    <span class="auto-style3" style="font-size: 16pt; text-decoration: underline">Data Base</span></h1>
<h1 style="text-align: center; font-size: 14px">
    &nbsp;</h1>
<h1 style="font-size: 14px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="ButtonViewCategory" runat="server" Height="36px" Text="View Category Data" Width="126px" OnClick="ButtonViewCategory_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="ButtonViewSubCatg" runat="server" Height="35px" Text="View Sub Category Data" Width="146px" OnClick="ButtonViewSubCatg_Click" />
</h1>
<h1 style="font-size: 14px">
    &nbsp;</h1>
<h1 style="font-size: 14px">
    &nbsp;</h1>
<h1 style="font-size: 14px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="ButtonViewProduct" runat="server" Height="38px" Text="View Products Data" Width="127px" OnClick="ButtonViewProduct_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="ButtonViewOrders" runat="server" Height="35px" Text="View Orders Data" Width="150px" OnClick="ButtonViewOrders_Click" />
    <br />
</h1>
<p>
</p>
<p>
</p>
<p>
</p>
    
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CatgId" DataSourceID="SqlDataSource1" Width="934px">
            <Columns>
                <asp:CommandField InsertText=" Insert" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
                <asp:BoundField DataField="CatgId" HeaderText="CatgId" InsertVisible="False" ReadOnly="True" SortExpression="CatgId">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecomdatabaseConnectionString %>" DeleteCommand="DELETE FROM [Catg] WHERE [CatgId] = @CatgId" InsertCommand="INSERT INTO [Catg] ([CategoryName], [Description]) VALUES (@CategoryName, @Description)" SelectCommand="SELECT * FROM [Catg]" UpdateCommand="UPDATE [Catg] SET [CategoryName] = @CategoryName, [Description] = @Description WHERE [CatgId] = @CatgId">
            <DeleteParameters>
                <asp:Parameter Name="CatgId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CategoryName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="CatgId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Panel>
     <asp:Panel ID="Panel1" runat="server" Visible="False">
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="SubCatgId" DataSourceID="SqlDataSource6" Width="934px" style="color: #000000">
            <Columns>
                <asp:CommandField InsertText=" Insert" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
                <asp:BoundField DataField="SubCatgId" HeaderText="SubCatgId" InsertVisible="False" ReadOnly="True" SortExpression="SubCatgId">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="CatgId" HeaderText="CatgId" SortExpression="CatgId">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="SubCategoryName" HeaderText="SubCategoryName" SortExpression="SubCategoryName">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ecomdatabaseConnectionString %>" DeleteCommand="DELETE FROM [SubCatg] WHERE [SubCatgId] = @SubCatgId" InsertCommand="INSERT INTO [SubCatg] ([CatgId], [SubCategoryName], [Description]) VALUES (@CatgId, @SubCategoryName, @Description)" SelectCommand="SELECT * FROM [SubCatg]" UpdateCommand="UPDATE [SubCatg] SET [CatgId] = @CatgId, [SubCategoryName] = @SubCategoryName, [Description] = @Description WHERE [SubCatgId] = @SubCatgId">
             <DeleteParameters>
                 <asp:Parameter Name="SubCatgId" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="CatgId" Type="Int32" />
                 <asp:Parameter Name="SubCategoryName" Type="String" />
                 <asp:Parameter Name="Description" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="CatgId" Type="Int32" />
                 <asp:Parameter Name="SubCategoryName" Type="String" />
                 <asp:Parameter Name="Description" Type="String" />
                 <asp:Parameter Name="SubCatgId" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Visible="False">
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProdId" DataSourceID="SqlDataSource2" Height="327px" style="color: #000000" Width="934px" PageSize="5">


            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
                <asp:BoundField DataField="CatgId" HeaderText="CatgId" SortExpression="CatgId">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="SubCatgId" HeaderText="SubCatgId" SortExpression="SubCatgId">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ProdId" HeaderText="ProdId" InsertVisible="False" ReadOnly="True" SortExpression="ProdId">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" >
                                    <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>

                <asp:BoundField DataField="MRP" HeaderText="MRP" SortExpression="MRP" >
                                    <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>

                <asp:BoundField DataField="OurPrice" HeaderText="OurPrice" SortExpression="OurPrice" >
                                    <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>

                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" >
                                    <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>

                <asp:ImageField DataAlternateTextField="image" DataImageUrlField="image" HeaderText="image" SortExpression="image">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="2px" Wrap="False" Height="2px" />
                </asp:ImageField>

            </Columns>


        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ecomdatabaseConnectionString %>" DeleteCommand="DELETE FROM [NewProduct] WHERE [ProdId] = @ProdId" InsertCommand="INSERT INTO [NewProduct] ([CatgId], [SubCatgId], [ProductName], [MRP], [OurPrice], [image], [description]) VALUES (@CatgId, @SubCatgId, @ProductName, @MRP, @OurPrice, @image, @description)" SelectCommand="SELECT * FROM [NewProduct]" UpdateCommand="UPDATE [NewProduct] SET [CatgId] = @CatgId, [SubCatgId] = @SubCatgId, [ProductName] = @ProductName, [MRP] = @MRP, [OurPrice] = @OurPrice, [image] = @image, [description] = @description WHERE [ProdId] = @ProdId">
            <DeleteParameters>
                <asp:Parameter Name="ProdId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CatgId" Type="Int32" />
                <asp:Parameter Name="SubCatgId" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="MRP" Type="Decimal" />
                <asp:Parameter Name="OurPrice" Type="Decimal" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CatgId" Type="Int32" />
                <asp:Parameter Name="SubCatgId" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="MRP" Type="Decimal" />
                <asp:Parameter Name="OurPrice" Type="Decimal" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="ProdId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Panel> 

     <%--<asp:Panel ID="Panel4" runat="server">
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProdId" DataSourceID="SqlDataSource2" Height="262px" style="color: #000000" Width="935px">


            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
                <asp:BoundField DataField="CatgId" HeaderText="CatgId" SortExpression="CatgId">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="SubCatgId" HeaderText="SubCatgId" SortExpression="SubCatgId">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ProdId" HeaderText="ProdId" InsertVisible="False" ReadOnly="True" SortExpression="ProdId">
                <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" >
                                    <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>

                <asp:BoundField DataField="MRP" HeaderText="MRP" SortExpression="MRP" >
                                    <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>

                <asp:BoundField DataField="OurPrice" HeaderText="OurPrice" SortExpression="OurPrice" >
                                    <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>

                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" >
                                    <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>

                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" >
                                    <ItemStyle Font-Bold="True" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>

            </Columns>


        </asp:GridView>
        
    </asp:Panel>--%>
<p>
</p>
<p>
</p>


</asp:Content>


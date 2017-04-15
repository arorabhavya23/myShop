<%@ Page Title="" Language="C#" MasterPageFile="~/DataMiningMasterPage.master" AutoEventWireup="true" CodeFile="MobileDescription.aspx.cs" Inherits="MobileDescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:Panel ID="Panel1" runat="server">

        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2" Height="663px" Width="932px">
            <ItemTemplate>
                <table style="border: thin groove #000000; width: 99%; height: 431px">
                    <tr style="border: thin groove #000000;">
                        <td rowspan="9" style="width: 347px">
                            <asp:Image ID="Image1" runat="server" Height="558px" ImageUrl='<%# Eval("image") %>' Width="306px" />
                        </td>
                        <td style="border: thin groove #000000;">
                            <h2 style="border: thin groove #000000; color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                            </h2>
                            <p style="color: #000000">
                                &nbsp;</p>
                            <h4 style="color: #000000">&nbsp;<span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RS.<asp:Label ID="Label2" runat="server" Text='<%# Eval("OurPrice") %>'></asp:Label>
                                </span></h4>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 35px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="border: thin groove #000000; height: 35px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="37px" ImageUrl="~/css/images/addtocart.gif" OnClick="ImageButton2_Click" Width="103px" />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButtonBuyNow" runat="server" Height="42px" ImageUrl="~/css/images/buynow.png" Width="106px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 35px">&nbsp;</td>
                    </tr>
                    <tr style="border: medium groove #000000">
                        <td style="border: thin groove #000000; height: 174px">
                            <h1 style="color: #000000">Specification</h1>
                            <p style="color: #000000">
                                &nbsp;</p>
                            <h3 style="color: #000000; font-size: 14pt">&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" Height="94px" ReadOnly="True" Text='<%# Eval("description") %>' TextMode="MultiLine" Width="363px"></asp:TextBox>
                            </h3>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 35px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 35px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 35px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 35px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 35px">&nbsp;</td>
                    </tr>
                    
                    
                    <tr>
                        <td style="width: 347px; height: 75px"></td>
                        <td style="height: 75px">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="">
        </asp:LinqDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ecomdatabaseConnectionString %>" SelectCommand="SELECT * FROM [NewProduct] WHERE ([ProdId] = @ProdId2)">
            <SelectParameters>
                <asp:SessionParameter Name="ProdId2" SessionField="ProdId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />






        <br />

    </asp:Panel>


    


</asp:Content>


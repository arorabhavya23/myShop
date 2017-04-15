<%@ Page Title="" Language="C#" MasterPageFile="~/DataMiningMasterPage.master" AutoEventWireup="true" CodeFile="billgeneration.aspx.cs" Inherits="billgeneration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div id="master">
            <div class="shell">
                <%--<div id="head">
                    <div id="img">
                        <a href="../index.aspx">
                            <img src="images/logo.gif" alt="" /></a></div>
                </div>--%>
                <div id="name">
                    Welcome <em>
                        <asp:Label ID="Label1" runat="server"></asp:Label></em>
                </div>
                <div id="other">
                    <div class="o-left">
                        Your Bill Number</div>
                    <div class="o-right">
                        <em>
                            <asp:Label ID="b_num" runat="server"></asp:Label></em>
                    </div>
                    <div class="clear1">
                    </div>
                    <div class="o-left">
                        Your Order Date</div>
                    <div class="o-right">
                        <em>
                            <asp:Label ID="o_date" runat="server"></asp:Label></em>
                    </div>
                    <div class="clear1">
                    </div>
                    <div class="o-left">
                        Your Order Detail</div>
                    <div class="o-right">
                        <em>&nbsp;</em>
                    </div>
                    <div class="clear">
                    </div>
                    <div id="order">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                            GridLines="Horizontal" Width="500px" BackColor="White" BorderColor="#336666"
                            BorderStyle="Double" BorderWidth="3px">
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <RowStyle BackColor="White" ForeColor="#333333" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <Columns>
                                <asp:BoundField DataField="IName" HeaderText="Product" />
                                <asp:BoundField DataField="Qty" HeaderText="Quantity" />
                                <asp:BoundField DataField="IPrice" HeaderText="Offer Price" />
                                <asp:BoundField DataField="total" HeaderText="Total" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <div class="clear1">
                    </div>
                    <div class="o-left">
                        Your Total Quantity</div>
                    <div class="o-right">
                        <em>
                            <asp:Label ID="lblqty" runat="server"></asp:Label></em>
                    </div>
                    <div class="clear1">
                    </div>
                    <div class="o-left">
                        Your Total Amount</div>
                    <div class="o-right">
                        <em>
                            <asp:Label ID="lbltot" runat="server"></asp:Label></em>
                    </div>
                    <div class="clear1">
                    </div>
                    <div class="o-left">
                        Your Shipping Address</div>
                    <div class="o-right">
                        <div class="s_add">
                            <kbd>
                                <asp:Label ID="s_address" runat="server"></asp:Label></kbd></div>
                    </div>
                    <div class="clear1">
                    </div>
                    <div class="o-left">
                        Your Payment Detail
                    </div>
                    <div id="payment">
                        <ul id="pay">
                            <li class="bul">Your Payment Mode</li>
                            <li>
                                <asp:Label ID="p_mode" runat="server"></asp:Label></li>
                            <li class="bul">Your Card Number</li>
                            <li>
                                <asp:Label ID="p_card" runat="server"></asp:Label></li>
                            <li class="bul">Card Expiry Date</li>
                            <li>
                                <asp:Label ID="p_exp" runat="server"></asp:Label></li>
                        </ul>
                    </div>
                </div>
                <div class="clear">
                </div>
                <p>
                    <a href="javascript:void(0);" onclick="javascript:window.print();" class="print">Print
                        this page</a></p>
            </div>
        </div>

</asp:Content>


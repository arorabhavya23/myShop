<%@ Page Title="" Language="C#" MasterPageFile="~/DataMiningMasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="Admin_SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:Panel ID="Panel2" runat="server" style="text-align: center">
        <asp:Login ID="Login1" runat="server" Height="228px" OnAuthenticate="Login1_Authenticate" Width="427px">
        </asp:Login>


        &nbsp;</asp:Panel>


</asp:Content>


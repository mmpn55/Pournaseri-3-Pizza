<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Pournaseri_Pizza.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div dir="rtl">
        <br />
        <h1>مشاهده سفارشات</h1>
        <br />
        <br />
        <asp:ListBox ID="OrderListBox" runat="server" Width="100%"></asp:ListBox>
    </div>
</asp:Content>

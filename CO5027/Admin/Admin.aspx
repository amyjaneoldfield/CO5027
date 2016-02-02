<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CO5027.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h3>Welcome back admin user!</h3>

    <p>View the current list of products below which are linked
        to the <br />current database system.</p>

    <asp:Label ID="lblId" runat="server" Text="Product Id:"></asp:Label>
    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>

    <asp:Label ID="lblName" runat="server" Text="Product Name:"></asp:Label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

    <asp:Button ID="btnAdminAdd" runat="server"  Text="Add" OnClick="btnAdminAdd_Click" />

</asp:Content>

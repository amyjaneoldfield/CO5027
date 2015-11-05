<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CO5027.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Welcome back admin user!</h3>

    <div id="adminTable">
    <table>
        <tr>
            <td>ID</td>
            <td>Product</td>
            <td>Price</td>
            <td>QTY Available</td>
            <td>Action</td>
        </tr>
        <tr>
            <td>1</td>
            <td>Roller Lash Mascara</td>
            <td>£16</td>
            <td>12</td>
            <td>Edit Delete</td>
        </tr>

        <tr>
            <td>2</td>
            <td>Gimmie Brow</td>
            <td>£12</td>
            <td>7</td>
            <td>Edit Delete</td>
        </tr>
    </table></div>
</asp:Content>

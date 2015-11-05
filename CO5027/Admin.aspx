<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CO5027.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Welcome back admin user!</h3>

    <p>View the current list of products below which are linked
        to the <br />current database system.</p>
    <div id="adminTable">
    <table>
        <caption>Products table</caption>
        <tr>
            <th>ID</th>
            <th>Product</th>
            <th>Price</th>
            <th>QTY Available</th>
            <th>Action</th>
        </tr>
        <tr>
            <td>1</td>
            <td>Roller Lash Mascara</td>
            <td>£16</td>
            <td>12</td>
            <td>
                <asp:Button ID="btnEditAdmin" runat="server" ForeColor="#F17877" Text="Edit" />
                <asp:Button ID="btnAdminDelete" runat="server" ForeColor="#F17877" Text="Delete" />
            </td>
        </tr>

        <tr>
            <td>2</td>
            <td>Gimmie Brow</td>
            <td>£12</td>
            <td>7</td>
            <td>
                <asp:Button ID="btnAdminEdit1" runat="server" ForeColor="#F17877" Text="Edit" />
                <asp:Button ID="btnAdminDelete1" runat="server" ForeColor="#F17877" Text="Delete" />
            </td>
        </tr>
    </table>
        <br />
    </div>

    <div id="adminAdd">
    <h2>Add Products:</h2>
    <p>Add products to the system and watch the table update on the left hand side.</p>
        <p>
            <asp:Label ID="lblAdminProduct" runat="server" Text="Product:"></asp:Label>
            <input id="txtAdminProduct" type="text" /></p>
        </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

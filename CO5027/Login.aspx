<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CO5027.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Welcome</h2>   

    <h3>Login below:</h3>

    <p>
        <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" ForeColor="#F17877"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" ForeColor="#F17877"></asp:TextBox>
    </p>
    <p>
        <asp:CheckBox ID="chkRemember" runat="server" Font-Size="13px" Text="Remember me" />
    </p>
    <p>
        <asp:Button ID="btnLogin" runat="server" ForeColor="#F17877" Text="Login" />
    </p>

</asp:Content>

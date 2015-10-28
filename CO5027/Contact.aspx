<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CO5027.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Contact</h2>
    <p>If you have any problems or queries then feel free to contact us.</p>
    <p>
        <asp:Label ID="lblName" runat="server" AssociatedControlID="txtName" Text="Name:"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblMessage" runat="server" AssociatedControlID="txtMessage" Text="Message:"></asp:Label>
        <textarea id="txtMessage" cols="20" name="S1" rows="2"></textarea></p>
    <p>
        <asp:Button ID="btnSend" runat="server" ForeColor="#F17877" OnClick="btnSend_Click" Text="Send" />
    </p>
</asp:Content>

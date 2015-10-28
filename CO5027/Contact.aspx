<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CO5027.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Contact</h2>
    <p>If you have any problems or queries then feel free to contact us.</p>

    <div id="contact">
    <h3>Address:</h3>
    <p>
        Boots 47-55 Foregate Street, Chester, Cheshire CH1 1NA
    </p>
    <h3>Telephone:</h3>
    <p>01244 328421</p>
        </div>

    <div id="email">
<p>
    <asp:Label ID="lblContactName" runat="server" AssociatedControlID="txtContactName" Text="Name:"></asp:Label>
    <asp:TextBox ID="txtContactName" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="lblContactEmail" runat="server" AssociatedControlID="txtContactEmail" Text="Email:"></asp:Label>
    <asp:TextBox ID="txtContactEmail" runat="server"></asp:TextBox>
</p>
<p>
    &nbsp;</p> 
<p>
    <asp:Button ID="btnSend" runat="server" ForeColor="#F17877" OnClick="btnSend_Click" Text="Send" />
</p>
        </div>

    <br />

    <div id="location">
    <h3>&nbsp;</h3>
        <h3>&nbsp;</h3>
        <h3>&nbsp;</h3>
        <h3>&nbsp;</h3>
        <h3>&nbsp;</h3>
        <h3>Store location:</h3>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d305478.65906873083!2d-3.08843170038598!3d53.261728127589755!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0xe6109c929e64e66c!2sBenefit+Cosmetics+Beauty+Bar!5e0!3m2!1sen!2suk!4v1446047099156" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>
</asp:Content>

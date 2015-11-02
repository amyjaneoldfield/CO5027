<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CO5027.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Welcome</h2>  
    <p>Sign in to your current account or create a new one if this is your first time visiting below!</p>
    
    <div id="login"> 
    <h3>Returning Customer</h3>
    <h4>Login below:</h4>

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
        </div>

    <div id="signup">
    <h3>New Customer</h3>
    <h4>Sign up below:</h4>
    <p>
        <asp:Label ID="lblFirstname" runat="server" AssociatedControlID="txtFirstName" Text="First Name:"></asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblLastName" runat="server" AssociatedControlID="txtLastName" Text="Last Name:"></asp:Label>
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblEmailSingup" runat="server" AssociatedControlID="txtEmailSingup" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmailSingup" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblPassSign" runat="server" AssociatedControlID="txtPassSign" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPassSign" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblConfPass" runat="server" AssociatedControlID="txtConfPass" Text="Confirm Password:"></asp:Label>
        <asp:TextBox ID="txtConfPass" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="txtCreate" runat="server" ForeColor="#F17877" Text="Create" />
    </p>
        </div>
   
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
   
</asp:Content>

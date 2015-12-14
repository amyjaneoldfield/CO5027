<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CO5027.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Welcome</h2>  
    <p>Sign in to your current account or create a new one if this is your first time visiting below!</p>
    
    <div id="login"> 
    <h3>
        <!--
        &nbsp; 
        --> Returning Customer</h3>
    <h4>
        <!---
        &nbsp; 
            -->
            Login below:</h4>

    <p>
        <!--
        &nbsp; -->

        <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Email:"></asp:Label>
        <!--
        &nbsp;
        -->
        <asp:TextBox ID="txtEmail" runat="server" ForeColor="#F17877"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValEmail" runat="server" 
            ControlToValidate="txtEmail" ErrorMessage="Valid email cannot be left blank, please enter email."></asp:RequiredFieldValidator>
    </p>

    <p>
       <!--
        &nbsp; -->
        <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword" Text="Password:"></asp:Label>
        <!--
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
        <asp:TextBox ID="txtPassword" runat="server" ForeColor="#F17877"></asp:TextBox>
    </p>
    <p>
        <asp:CheckBox ID="chkRemember" runat="server" Font-Size="13px" Text="Remember me" />
        </p>
    <p>
        <!--
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        -->
        <asp:Button ID="btnLogin" runat="server" ForeColor="#F17877" Text="Login" OnClick="btnLogin_Click" />
    </p>
        </div>

    <div id="signup">
    <h3>
        <!--
        &nbsp; -->
         New Customer</h3>
    <h4>
        <!--&nbsp; -->
        Sign up below:</h4>
    <p>
        <!--
        &nbsp;&nbsp; -->
        <asp:Label ID="lblFirstname" runat="server" AssociatedControlID="txtFirstName" Text="First Name:"></asp:Label>
       <!-- *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
    </p>
    <p>
      <!--  &nbsp;&nbsp; -->
        <asp:Label ID="lblLastName" runat="server" AssociatedControlID="txtLastName" Text="Last Name:"></asp:Label>
      <!--  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
    </p>
    <p>
      <!--  &nbsp;&nbsp; -->
        <asp:Label ID="lblEmailSingup" runat="server" AssociatedControlID="txtEmailSingup" Text="Email:"></asp:Label>
       <!-- *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        -->
        <asp:TextBox ID="txtEmailSingup" runat="server" style="margin-left: 0px"></asp:TextBox>
    </p>
    <p>
       <!-- &nbsp;&nbsp; -->
        <asp:Label ID="lblPassSign" runat="server" AssociatedControlID="txtPassSign" Text="Password:"></asp:Label>
   <!--     &nbsp;*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
        <asp:TextBox ID="txtPassSign" runat="server"></asp:TextBox>
    </p>
    <p>
      <!--  &nbsp;&nbsp; -->
        <asp:Label ID="lblConfPass" runat="server" AssociatedControlID="txtConfPass" Text="Confirm Password:"></asp:Label>
      <!--  *&nbsp;1 --> <asp:TextBox ID="txtConfPass" runat="server"></asp:TextBox>
    </p>
    <p>
      <!--  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    -->    <asp:Button ID="txtCreate" runat="server" ForeColor="#F17877" Text="Create" />
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

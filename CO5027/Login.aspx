<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CO5027.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Welcome</h2>
    <p>Sign in to your current account or create a new one if this is your first time visiting below!</p>

    <asp:Login ID="lgnCredentials" runat="server" CssClass="login">
        <LayoutTemplate>
            <div class="login" runat="server">
                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
            </div>

            <div class="login" runat="server">
                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="lgnCredentials">*</asp:RequiredFieldValidator>
            </div>

            <div class="login" runat="server">
                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
            </div>

            <div class="login" runat="server">
                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="lgnCredentials">*</asp:RequiredFieldValidator>
            </div>
            <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
            <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="lgnCredentials" />
        </LayoutTemplate>
    </asp:Login>

    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CellPadding="-1" CellSpacing="-1" >
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>








</asp:Content>

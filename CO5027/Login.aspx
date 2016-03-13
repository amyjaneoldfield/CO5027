<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CO5027.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Welcome</h2>  
    <p>Sign in to your current account or create a new one if this is your first time visiting below!</p>
        <asp:Login ID="lgnCredentials" runat="server" CssClass="login">
        </asp:Login>

        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CellPadding="-1" CellSpacing="-1" >
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
        </asp:CreateUserWizard>

        
        
    
    
  
         
   
</asp:Content>

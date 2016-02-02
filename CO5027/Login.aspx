<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CO5027.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Welcome</h2>  
    <p>Sign in to your current account or create a new one if this is your first time visiting below!<asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
        </asp:CreateUserWizard>
        <asp:Login ID="Login1" runat="server">
        </asp:Login>
    </p>
    
  
         
   
</asp:Content>

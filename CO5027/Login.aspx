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

    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CellPadding="-1" CellSpacing="-1" CssClass="createUser">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" EnableTheming="False" >
                <ContentTemplate>
                 
                          <div class="createUser" runat="server">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                           </div>

                    <div class="createUser" runat="server">
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </div>

                    <div class="createUser" runat="server">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                           </div>

                    <div class="createUser" runat="server">
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                          </div>

                    <div class="createUser" runat="server">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                           </div>

                    <div class="createUser" runat="server">
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </div>

                    <div class="createUser" runat="server">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                           </div>

<div class="createUser" runat="server">                      
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                           </div>

                    <div class="createUser" runat="server">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                          </div>

                    <div class="createUser" runat="server">
                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                           </div>

                    <div class="createUser" runat="server">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                           </div>

                    <div class="createUser" runat="server">
                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                  </div>

                    <div class="createUser" runat="server">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                         </div>

                    <div class="createUser" runat="server">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                    </div>
                </ContentTemplate>
                <CustomNavigationTemplate>
                    
                                <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Create User" ValidationGroup="CreateUserWizard1" />
                          
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server" EnableTheming="False" >
                <ContentTemplate>
                    
                                <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue" Text="Continue" ValidationGroup="CreateUserWizard1" />
                            
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
        <FinishNavigationTemplate>
            <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
            <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finish" />
        </FinishNavigationTemplate>
        <StartNavigationTemplate>
            <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" />
        </StartNavigationTemplate>
        <StepNavigationTemplate>
            <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
            <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next" />
        </StepNavigationTemplate>
    </asp:CreateUserWizard>
    <div id="push"></div>



</asp:Content>

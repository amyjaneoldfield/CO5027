﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CO5027.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Contact</h2>
    <p>If you have any problems or queries then feel free to contact us via email below, phone call or visit the store!</p>

    <div id="contact">
    <h3>Address:</h3>
    <p>Boots 47-55 Foregate Street, Chester, Cheshire CH1 1NA</p>
    <h3>Telephone:</h3>
    <p>01244 328421</p>
     </div>

    <div id="email">
    <div id="divemail" runat="server">
        
<p>
    <asp:Label ID="lblContactName" runat="server" AssociatedControlID="txtContactName" Text="Name:"></asp:Label>
    <asp:TextBox ID="txtContactName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="ValidatorName" runat="server" ControlToValidate="txtContactName" ErrorMessage="*Please ensure you've entered your name"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Label ID="lblContactEmail" runat="server" AssociatedControlID="txtContactEmail" Text="Email:"></asp:Label>
    <asp:TextBox ID="txtContactEmail" runat="server" TextMode="Email"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegValidatorEmailError" runat="server" ErrorMessage="Invalid email used!" ControlToValidate="txtContactEmail" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="ValEmailContact" runat="server" ControlToValidate="txtContactEmail" ErrorMessage="*Valid email is required, please don't leave blank."></asp:RequiredFieldValidator>
</p>
        <p>
            <asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label>
            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValSubject" runat="server" ControlToValidate="txtSubject" ErrorMessage="*Please ensure a valid subject has been entered"></asp:RequiredFieldValidator>
        </p>
<p>           
            <asp:Label ID="lblContactMessage" runat="server" Text="Message:"></asp:Label>
            <asp:TextBox ID="txtContactMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValMsgContact" runat="server" ControlToValidate="txtContactMessage" ErrorMessage="*Please fill out the message field accurately"></asp:RequiredFieldValidator>
            </p>
    </div>

    <asp:Button ID="btnSend" runat="server" CssClass="btn" OnClick="btnSend_Click"  Text="Send" />
        <asp:Literal ID="LitSuccess" runat="server"></asp:Literal>
       </div>

    <div id="location">
        <!-- start for map -->
    <script src="Scripts/Maps.js"></script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB1g3qhFlTplhXvjbOvXJ55wP0GiBtEgSA&callback=initMap"></script>       
        <!--- end for map -->
       
        <div id="map">   <!--still image map -->
   <img src="Images/map.png" alt="Benefit cosmetics store location on Google Maps, 
       located on Pool Lane which can be accessed from the A5117 road after you turn off the M56." width="560" height="448" /> 
        </div>
    </div>
</asp:Content>

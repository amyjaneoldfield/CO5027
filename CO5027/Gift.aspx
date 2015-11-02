<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gift.aspx.cs" Inherits="CO5027.Gift" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Welcome to the Gift Sets page!</h2>
    <p>
        Grab them cheap while stock lasts, limited availability.</p>
    <p>
        &nbsp;</p>

    
    <div id="party">
    <img src="Images/party.png" height="200" width="200" alt="Pump up the party gift set image." />
        <br />
        
        <h3>Pump Up The Party!</h3>
        <p>Get ready to rock the party with this gift set worth: £49.01*</p>
        <h3>£30</h3>
        <p>
            <asp:Button ID="btnPumpPurchase" runat="server" ForeColor="#F17877" Text="Purchase" />
        </p>
        </div>

    <div id="complexion">
        <img src="Images/complexion.jpg" height="200" width="200" alt="Complexion Confections gift set" />
        <h3>Complexion Confections</h3>
        <p>Grab the amazing bargin to your perfect skin care collection worth: £61.35*</p>
        <div class="Offer">
        <h3>£32.50</h3></div><h3>NOW £26.50</h3>
        <asp:Button ID="btnComplexionPurchase" runat="server" ForeColor="#F17877" Text="Purchase" />
    </div>

    <div id="bronze">
        <img src="Images/bronze.jpg" height="200" width="200" alt="Bronze gift set image" />
        <h3>The Bronze Of Champions</h3>
        <p>Complete the perfect shimmer look for eyes, face AND cheeks with this compact set.</p>
        <div class="Offer">
        <h3 id="sale">£22</h3></div><h3>NOW £17.50</h3>
        <p>
            <asp:Button ID="btnBronzePurchase" runat="server" ForeColor="#F17877" Text="Purchase" />
        </p>
    </div>
    <br />

   
</asp:Content>

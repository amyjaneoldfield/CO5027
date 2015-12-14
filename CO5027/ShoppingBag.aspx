<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingBag.aspx.cs" Inherits="CO5027.ShoppingBag" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Welcome to your shopping bag</h3>
    <p>Ensure you have logged in or signed up before proceding futher, 
        <br />to enable your address is displayed for shipping location.</p>
    <h4>Your bag is currnetly empty</h4>

    <div id="posting">
        <h3>Delivery address:</h3>
        <p>
            <asp:Label ID="lblDelAdd" runat="server" Text="Address:"></asp:Label>
            <!--*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
            <input id="txtDelAdd" type="text" />

        </p>

        <p>
            <asp:Label ID="lblDelAdd1" runat="server" Text="Addresss line 2:"></asp:Label>
            <!--&nbsp;-->
            <input id="txtDelAdd2" type="text" /></p>

        <p>
            <asp:Label ID="lblDelTown" runat="server" Text="Town:"></asp:Label>
<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
            <input id="txtDelTown" type="text" /></p>
        
        <p>
            <asp:Label ID="lblDelPostcode" runat="server" Text="Postcode:"></asp:Label>
           <!-- *&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
            <input id="txtDelPostcode" type="text" /></p>
        
        <p>
            <asp:Label ID="lblDelCity" runat="server" Text="City:"></asp:Label>
           <!--  *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
            <input id="txtDelCity" type="text" /></p>
        <p>
           <!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
            <asp:Button ID="btnDelAdd" runat="server" ForeColor="#F17877" Text="Add details" />
        </p>
    </div>


        <h3>
            <asp:Label ID="lblShippingCost" runat="server" AssociatedControlID="dListShipping" Text="Shipping Cost:"></asp:Label>
            <asp:DropDownList ID="dListShipping" runat="server" ForeColor="#F17877">
                <asp:ListItem>First Class £4.50</asp:ListItem>
                <asp:ListItem>Second Class £2.80</asp:ListItem>
            </asp:DropDownList>
    </h3>
    <p>*Please note we are currnetly only shipping to UK residence* </p>

    <!--
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    -->

    <h3>Subtotal:</h3>

    <!--
    <p>&nbsp;</p>
-->
    <h3>Total:</h3>

    <!--
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    -->

    <p>
        <asp:Button ID="btnContinue" runat="server" Text="Continue Shopping" ForeColor="#F17877" OnClick="btnContinue_Click"  />
        <!--
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       -->
         <asp:Button ID="btnCheckout" runat="server" Text="Checkout" ForeColor="#F17877" />
    </p>
</asp:Content>


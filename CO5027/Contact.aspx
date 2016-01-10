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
  <!--  &nbsp;&nbsp; -->
    <asp:Label ID="lblContactName" runat="server" AssociatedControlID="txtContactName" Text="Name:"></asp:Label>
    <asp:TextBox ID="txtContactName" runat="server"></asp:TextBox>
</p>
<p>
  <!--  &nbsp;&nbsp; -->
    <asp:Label ID="lblContactEmail" runat="server" AssociatedControlID="txtContactEmail" Text="Email:"></asp:Label>
    <asp:TextBox ID="txtContactEmail" runat="server" TextMode="Email"></asp:TextBox>
</p>
        <p>
            <asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label>
            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
        </p>
        <p>
           <!-- &nbsp;&nbsp; -->
            <asp:Label ID="lblContactMessage" runat="server" Text="Message:"></asp:Label>
            <asp:TextBox ID="txtContactMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
          <!--  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
            </p>
<p>
    <asp:Button ID="btnSend" runat="server" ForeColor="#F17877" OnClick="btnSend_Click" Text="Send" />
</p>
        </div>

 <!--   <br /> -->

    <div id="location">
 <!--   <h3>&nbsp;</h3>
        <h3>&nbsp;</h3>
        <h3>&nbsp;</h3>
        <h3>&nbsp;</h3>
        <h3>&nbsp;</h3> -->
      <h3>Store location:</h3>
       
        <!-- start for map -->
         


    <script src="Scripts/Maps.js"></script>

    <script async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB1g3qhFlTplhXvjbOvXJ55wP0GiBtEgSA&callback=initMap">
    </script>
         
        <!--- end for map --><div id="map">  
   <img src="Images/map.png" alt="Benefit cosmetics store location on Google Maps" width="560" height="448" /> </div>
    </div>
</asp:Content>

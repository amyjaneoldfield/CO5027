<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CO5027.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div id="slider">
<figure> 
<p class="banner1">banner1</p><!--(SMASHINBEAUTY, 2012)--> <!-- image for banner picture 1 with text hidden in CSS-->
<p class="banner2">bbanner2</p> <!-- image for banner picture 2 with text hidden in CSS-->
</figure>
</div>

    <a href="~/Face.aspx" runat="server"><p class="discover">discover</p></a>

<div class="homePurchase">
    <asp:Repeater ID="rptrHome" runat="server" DataSourceID="dataSourceHome">
    <HeaderTemplate></HeaderTemplate>
        <ItemTemplate>        
               <img src="ProductImages/<%# Eval("Id") %>.jpg"  alt="<%#Eval("AltTxt") %>" width="<%#Eval("Width") %>" height="<%#Eval("Height") %>"/>
                <h3><%# Eval("ProductName") %></h3>
                <p><%# Eval("Description") %></p>
                <p>Quantity avalible <%# Eval("Stock") %></p>
                <h3>£<%# Eval("Price") %></h3>
        </ItemTemplate>
        <FooterTemplate></FooterTemplate>
  </asp:Repeater>

     <asp:DropDownList ID="dListQuant" runat="server" CssClass="status">
                   <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
          <asp:ListItem>3</asp:ListItem>
         <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
<asp:Button ID="btnEasy" runat="server" Text="Purchase" CssClass="btn" OnClick="btnEasy_Click" /> </div>

    <p>Posting costs will be £3.80 standard shipping.</p>
       <asp:SqlDataSource ID="dataSourceHome" runat="server" ConnectionString="<%$ ConnectionStrings:db_1404159_WebsiteAssignmentConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([Id] = @Id)">
           <SelectParameters>
               <asp:Parameter DefaultValue="16" Name="Id" Type="Int32" />
           </SelectParameters>
    </asp:SqlDataSource>
  
    <div id="homeImg"> 
        <!--Images for decoration styled in CSS text hidden -->
        <p class="styleImg">StyleImg</p>
        <p class="mascaraImg">mascaraImg</p>
        <p class="variousImg">variousImg</p>
</div>
</asp:Content>

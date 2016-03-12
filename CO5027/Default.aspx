<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CO5027.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div id="slider">
<figure>
<img src="Images/banner.jpg" height="320" width="960" alt="Banner image displaying gift sets"/> <!--(SMASHINBEAUTY, 2012)-->
<img src="Images/banner2.png" height="320" width="960" alt="Banner image displaying products"/>
</figure>
</div>

<div class="homePurchase">
    <asp:Repeater ID="rptrHome" runat="server" DataSourceID="dataSourceHome">
    <HeaderTemplate></HeaderTemplate>
        <ItemTemplate>

            
               <img src="ProductImages/<%# Eval("Id") %>.jpg"  alt="<%#Eval("AltTxt") %>" width="<%#Eval("Width") %>" height="<%#Eval("Height") %>"/>
                <h3><%# Eval("ProductName") %></h3>
                <p><%# Eval("Description") %></p>
                <p>Quantity avalible <%# Eval("Stock") %></p>
                <h3>£<%# Eval("Price") %></h3>
                <!--   <asp:Button CommandArgument="" -->
           
        </ItemTemplate>
        <FooterTemplate></FooterTemplate>
  </asp:Repeater>
     <asp:DropDownList ID="dListQuant" runat="server" ForeColor="#F17877">
                   <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
          <asp:ListItem>3</asp:ListItem>
         <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
<asp:Button ID="btnEasy" runat="server" Text="Purchase" CssClass="btn" OnClick="btnEasy_Click" /> </div>


       <asp:SqlDataSource ID="dataSourceHome" runat="server" ConnectionString="<%$ ConnectionStrings:db_1404159_WebsiteAssignmentConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([Id] = @Id)">
           <SelectParameters>
               <asp:Parameter DefaultValue="16" Name="Id" Type="Int32" />
           </SelectParameters>
    </asp:SqlDataSource>
  
    <div id="homeImg">
       <img src="Images/style.jpg" height="300" width="300" alt="Style image displaying products" />
       <img src="Images/new.jpg" height="300" width="300" alt="Image displaying mascaras" />
       <img src="Images/fav.jpg" height="300" width="300" alt="Image displaying various products" />
</div>
</asp:Content>

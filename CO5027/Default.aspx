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


    <asp:Repeater ID="rptrHome" runat="server" DataSourceID="dataSourceHome">
    <HeaderTemplate></HeaderTemplate>
        <ItemTemplate>

            <div class="face">
               <img src="ProductImages/<%# Eval("Id") %>.jpg"  alt="<%#Eval("AltTxt") %>" width="<%#Eval("Width") %>" height="<%#Eval("Height") %>"/>
                <h3><%# Eval("ProductName") %></h3>
                <p><%# Eval("Description") %></p>
                <h3>£<%# Eval("Price") %></h3>
                <asp:Button ID="btnEasy" runat="server" Text="Purchase" CssClass="btn" />
                <!--   <asp:Button CommandArgument="" -->
            </div>
        </ItemTemplate>
        <FooterTemplate></FooterTemplate>
  </asp:Repeater>

       <asp:SqlDataSource ID="dataSourceHome" runat="server" ConnectionString="<%$ ConnectionStrings:db_1404159_WebsiteAssignmentConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE (([Id] &gt;= @Id) AND ([Id] &lt;= @Id2))">
           <SelectParameters>
               <asp:Parameter DefaultValue="16" Name="Id" Type="Int32" />
               <asp:Parameter DefaultValue="18" Name="Id2" Type="Int32" />
           </SelectParameters>
    </asp:SqlDataSource>
  
       <img src="Images/style.jpg" height="300" width="300" alt="Style image displaying products" />
       <img src="Images/new.jpg" height="300" width="300" alt="Image displaying mascaras" />
       <img src="Images/fav.jpg" height="300" width="300" alt="Image displaying various products" />

</asp:Content>

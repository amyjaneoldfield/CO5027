<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gift.aspx.cs" Inherits="CO5027.Gift" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Welcome to the Gift Sets page!</h2>
    <p>
        Grab them cheap while stock lasts, limited availability.</p>
    <p>
        <asp:Label ID="lblSort" runat="server" AssociatedControlID="dlistSort" Text="Sort:"></asp:Label>
        <asp:DropDownList ID="dlistSort" runat="server" ForeColor="#F17877">
            <asp:ListItem>Most popular</asp:ListItem>
            <asp:ListItem>Newest</asp:ListItem>
            <asp:ListItem>Price ACS</asp:ListItem>
            <asp:ListItem>Price DSC</asp:ListItem>
        </asp:DropDownList>
    </p>

    <asp:Repeater ID="rptGift" runat="server" DataSourceID="DataSourceGifts">
    <HeaderTemplate></HeaderTemplate>
        <ItemTemplate>
 
            <div class="face">
               <img src="ProductImages/<%# Eval("Id") %>.jpg"  alt="<%#Eval("AltTxt") %>" width="<%#Eval("Width") %>" height="<%#Eval("Height") %>"/>
                <h3><%# Eval("ProductName") %></h3>
                <p><%# Eval("Description") %></p>
                <p>Quantity avalible <%# Eval("Stock") %></p>
                <h3>£<%# Eval("Price") %></h3>
             
        
              <asp:Button ID="btnEasy" runat="server" Text="Purchase" CssClass="btn" />
                <!--   <asp:Button CommandArgument="" -->
            </div>
        </ItemTemplate>
        <FooterTemplate></FooterTemplate>
    </asp:Repeater>
 
    <asp:SqlDataSource ID="DataSourceGifts" runat="server" ConnectionString="<%$ ConnectionStrings:db_1404159_WebsiteAssignmentConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE (([Id] &gt;= @Id) AND ([Id] &lt;= @Id2))">
        <SelectParameters>
            <asp:Parameter DefaultValue="1014" Name="Id" Type="Int32" />
            <asp:Parameter DefaultValue="1016" Name="Id2" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
   
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Face.aspx.cs" Inherits="CO5027.Face" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Welcome</h2>
    <p>This page has all products you would need to use on your face for that perfect glamour look.</p>
    <p>
        <asp:Label ID="lblSortFace" runat="server" AssociatedControlID="dListFace" Text="Sort:"></asp:Label>
        <asp:DropDownList ID="dListFace" runat="server" ForeColor="#F17877">
            <asp:ListItem>Most popular</asp:ListItem>
            <asp:ListItem>Newest</asp:ListItem>
            <asp:ListItem>Price ASC</asp:ListItem>
            <asp:ListItem>Price DSC</asp:ListItem>
        </asp:DropDownList>
    </p>


    <asp:Repeater ID="rptrContent" runat="server" DataSourceID="DataSourceProducts" OnItemCommand="rptrContent_ItemCommand">
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
   
    
    <asp:SqlDataSource ID="DataSourceProducts" runat="server" ConnectionString="<%$ ConnectionStrings:db_1404159_WebsiteAssignmentConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE (([Id] &gt;= @Id) AND ([Id] &lt;= @Id2))">
        <SelectParameters>
            <asp:Parameter DefaultValue="9" Name="Id" Type="Int32" />
            <asp:Parameter DefaultValue="14" Name="Id2" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>


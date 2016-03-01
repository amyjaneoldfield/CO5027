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


    <asp:Repeater ID="rptrContent" runat="server" DataSourceID="DataSourceProducts">
        <HeaderTemplate></HeaderTemplate>
        <ItemTemplate>

            <div class="face">
                <h3><%# Eval("ProductName") %></h3>
                <p><%# Eval("Description") %></p>
                <h3>£<%# Eval("Price") %></h3>
               <img src="ProductImages/<%# Eval("Id") %> "/>
                <asp:Button ID="btnEasy" runat="server" Text="Purchase" CssClass="btn" />
                <!--   <asp:Button CommandArgument="" -->
            </div>
        </ItemTemplate>
        <FooterTemplate></FooterTemplate>
    </asp:Repeater>
    
    <asp:SqlDataSource ID="DataSourceProducts" runat="server" ConnectionString="<%$ ConnectionStrings:db_1404159_WebsiteAssignmentConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>


</asp:Content>


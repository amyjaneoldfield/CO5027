<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eye.aspx.cs" Inherits="CO5027.Eye" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Welcome</h2>
    <p>Here you will find all the products we offer to apply to the eye area for that perfect finish.</p>
    <p>
        <asp:Label ID="lblSortEye" runat="server" AssociatedControlID="dListEye" Text="Sort:"></asp:Label>
        <asp:DropDownList ID="dListEye" runat="server" ForeColor="#F17877">
            <asp:ListItem>Most Popular</asp:ListItem>
            <asp:ListItem>Newest</asp:ListItem>
            <asp:ListItem>Price ASC</asp:ListItem>
            <asp:ListItem>Price DSC</asp:ListItem>
        </asp:DropDownList>
    </p>

    <asp:Repeater ID="rptrContentEye" runat="server" DataSourceID="datasourceProductsEye">
    <HeaderTemplate> </HeaderTemplate>
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

    <asp:SqlDataSource ID="datasourceProductsEye" runat="server" ConnectionString="<%$ ConnectionStrings:db_1404159_WebsiteAssignmentConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE (([Id] &gt;= @Id) AND ([Id] &lt;= @Id2))">
        <SelectParameters>
            <asp:Parameter DefaultValue="8" Name="Id" Type="Int32" />
            <asp:Parameter DefaultValue="16" Name="Id2" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
  
      </asp:Content>









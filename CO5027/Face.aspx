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

    <!--
        <img src="Images/foundation.png" height="200" width="200" alt="Hellow Flawless foundation image" /><!--(Benefit Cosmetics, 2015)
        <h3>Hello Flawless Oxygen Wow!</h3>
        <p>An oil-free liquid foundation to help you build on coverage for a natural flawless finish.</p>
        <h3>£24</h3>
        <p>
            <asp:Button ID="btnFoundation" runat="server" ForeColor="#F17877" Text="Purchase" />
        </p>-->

  <!--  <div id="easy">
        <img src="Images/bigeasy.jpe" height="200" width="200" alt="Big Easy BB cream image" /><!--(Benefit Cosmetics, 2015)
        <h3>Big Easy Complexion</h3>
        <p>Control your skin balance with a healthy natural glow to brighten your everday apperance.</p>
        <h3>£26</h3>
        <p>
            <asp:Button ID="btnEasy" runat="server" ForeColor="#F17877" Text="Purchase" />
        </p>
    </div>

    <div id="Gorg">
        <img src="Images/gorg.jpg" height="200" width="200" alt="Cream foundation image" /><!--(Benefit Cosmetics, 2015)
        <h3>Some Kind-A Gorgeous</h3>
        <p>Get your hands on this cream compact liquid foundation which is easy to apply with instant coverage.</p>
        <h3>£24</h3>
        <p>
            <asp:Button ID="btnGorg" runat="server" ForeColor="#F17877" Text="Purchase" />
        </p>
    </div>

    <br />

    <br />

    <div id="hoola">
        <img src="Images/hoola.jpg" height="200" width="200" alt="Hoola bronze image" /><!--(Benefit Cosmetics, 2015)
        <h3>Hoola</h3>
        <p>Create a great glowing tan or create the perfect contour with this powder.</p>
        <h3>£20</h3>
        <p>
            <asp:Button ID="btnHoola" runat="server" ForeColor="#F17877" Text="Purchase" />
        </p>
    </div>

    <div id="fine">
        <img src="Images/fine.jpg" height="200" width="200" alt="Cheek contour blusher image" /><!--(Benefit Cosmetics, 2015)
        <h3>Fine-One Blusher</h3>
        <p>Boost the colour of your cheeks with this multi functional blusher to highlight and pump the colour.</p>
        <h3>£25</h3>
        <p>
            <asp:Button ID="btnFine" runat="server" ForeColor="#F17877" Text="Purchase" />
        </p>
    </div>

    <div id="watts">
        <img src="Images/watts.jpg" height="200" width="200" alt="Watts-Up cheek highlighter image" /><!--(Benefit Cosmetics, 2015)
        <h3>Watt's Up!</h3>
        <p>Give your cheeks and brows the full dimension look with this highlighter to create a shimmer look.</p>
        <h3>£16</h3>
        <p>
            <asp:Button ID="btnWatts" runat="server" ForeColor="#F17877" Text="Purchase" />
        </p>
    </div> -->

</asp:Content>

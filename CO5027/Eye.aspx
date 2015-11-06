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

    <div id="roller">
        <img src="Images/roller.jpe" height="200" width="200" alt="Roller Lash Mascara Image" /><!--(Benefit Cosmetics, 2015)-->
        <h3>Roller Lash Mascara</h3>
        <p>Get lashes that volumize and curl all in one product with this new lifting brush. </p>
        <h3>£16</h3>
        <p>
            <asp:Button ID="btnRoller" runat="server" ForeColor="#F17877" Text="Purchase" />
        </p>
    </div>

    <div id="real">
        <img src="Images/real.jpg" height="200" width="200" alt="they're real! mascara image" /><!--(Benefit Cosmetics, 2015)-->
        <h3>They're Real! Mascara</h3>
        <p>Get the longest and thickest lash result with this mascara.</p>
        <h3>£16</h3>
        <p>
            <asp:Button ID="btnReal" runat="server" ForeColor="#F17877" Text="Purchase" />
        </p>
    </div>

    <div id="brow">
        <img src="Images/brow.png" height="200" width="200" alt="Gimmie Brow filler image" /><!--(Benefit Cosmetics, 2015)-->
        <h3>Gimmie Brow</h3>
        <p>Fill in, shape or colour your brows using our natural brush.</p>
        <h3>£12</h3>
        <p>
            <asp:Button ID="btnBrow" runat="server" ForeColor="#F17877" Text="Purchase" />
        </p>
    </div>



    <br />
    <br />

    <div id="lash">
        <img src="Images/lash.jpg" height="200" width="200" alt="big spender false lashes image" /><!--(Benefit Cosmetics, 2015)-->
        <h3>Big Spender Lash</h3>
        <p>Apply these natural yet flawless finish long lasting lashes to get stylish eyes.</p>
        <h3>£8</h3>
        <p>
            <asp:Button ID="btnLash" runat="server" ForeColor="#F17877" Text="Purchase" />
        </p>
    </div>

    <div id="liner">
        <img src="Images/liner.jpg" height="200" width="200" alt="they're real! push-up eyeliner image" /><!--(Benefit Cosmetics, 2015)-->
        <h3>They're Real! Push-Up Eyeliner</h3>
        <p>Get the most dramatic liner look with our new and improved applicator.</p>
        <h3>£18</h3>
        <p>
            <asp:Button ID="btnLiner" runat="server" ForeColor="#F17877" Text="Purchase" />
        </p>
    </div>

    <div id="shadow">
        <img src="Images/shadow.jpg" height="200" width="200" alt="new! creaseless cream shadow image" /><!--(Benefit Cosmetics, 2015)-->
        <h3>new! creaseless cream shadow</h3>
        <p>Create a simple yet flawless natural shadow look with our cream product.</p>
        <h3>£8</h3>
        <p>
            <asp:Button ID="btnShadow" runat="server" ForeColor="#F17877" Text="Purchase" />
        </p>
    </div>

    <br />




</asp:Content>

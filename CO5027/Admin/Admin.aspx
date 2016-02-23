<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CO5027.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h3>Welcome back admin user!</h3>

    <p>View the current list of products below which are linked
        to the <br />current database system.</p>

    <asp:Label ID="lblName" runat="server" Text="Product Name:"></asp:Label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:Label ID="lblDescription" runat="server" Text="Product description:"></asp:Label>
    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
    <asp:Label ID="lblPrice" runat="server" Text="Price:"></asp:Label>
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
     <asp:Label ID="lblUpload" runat="server" Text="Upload Image:"></asp:Label>
     <asp:FileUpload ID="FileUpload" runat="server" />
     <asp:Label ID="lblAltTxt" runat="server" Text="Alt Text:"></asp:Label>
    <asp:TextBox ID="txtAltTxt" runat="server"></asp:TextBox>
    <asp:Button ID="btnAdminAdd" runat="server"  Text="Add" OnClick="btnAdminAdd_Click" />

    <asp:GridView ID="gviewProducts" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="AdminProducts">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="AltTxt" HeaderText="AltTxt" SortExpression="AltTxt" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
        </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="AdminProducts" runat="server" ConnectionString="<%$ ConnectionStrings:db_1404159_WebsiteAssignmentConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]">
     </asp:SqlDataSource>
     <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DropDownListDataSource" DataTextField="ProductName" DataValueField="Id">
     </asp:DropDownList>
     <asp:SqlDataSource ID="DropDownListDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_1404159_WebsiteAssignmentConnectionString %>" SelectCommand="SELECT * FROM [Items]"></asp:SqlDataSource>
     <asp:FileUpload ID="FileUpload1" runat="server" />
</asp:Content>

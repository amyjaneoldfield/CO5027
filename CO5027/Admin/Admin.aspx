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
    <asp:Button ID="btnAdminAdd" runat="server"  Text="Add" OnClick="btnAdminAdd_Click" />

    <asp:GridView ID="gviewProducts" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="AdminProducts">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="AdminProducts" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1404159_WebsiteAssignmentConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [Id] = @original_Id AND [ProductName] = @original_ProductName AND [Price] = @original_Price AND [Description] = @original_Description" InsertCommand="INSERT INTO [Products] ([ProductName], [Price], [Description]) VALUES (@ProductName, @Price, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [Price] = @Price, [Description] = @Description WHERE [Id] = @original_Id AND [ProductName] = @original_ProductName AND [Price] = @original_Price AND [Description] = @original_Description">
         <DeleteParameters>
             <asp:Parameter Name="original_Id" Type="Int32" />
             <asp:Parameter Name="original_ProductName" Type="String" />
             <asp:Parameter Name="original_Price" Type="Double" />
             <asp:Parameter Name="original_Description" Type="String" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="ProductName" Type="String" />
             <asp:Parameter Name="Price" Type="Double" />
             <asp:Parameter Name="Description" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="ProductName" Type="String" />
             <asp:Parameter Name="Price" Type="Double" />
             <asp:Parameter Name="Description" Type="String" />
             <asp:Parameter Name="original_Id" Type="Int32" />
             <asp:Parameter Name="original_ProductName" Type="String" />
             <asp:Parameter Name="original_Price" Type="Double" />
             <asp:Parameter Name="original_Description" Type="String" />
         </UpdateParameters>
     </asp:SqlDataSource>
</asp:Content>

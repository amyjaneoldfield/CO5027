<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CO5027.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h3>Welcome back admin user!</h3>
    <p>Insert a new product to the database below!</p>
 

    <div class="adminEnter" runat="server">
    <asp:Label ID="lblName" runat="server" Text="Product Name:"></asp:Label></div>
  
    <div class="adminEnter" runat="server">
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="ValName" runat="server" ControlToValidate="txtName" ErrorMessage="Error product name field must be filled in to be succesful."></asp:RequiredFieldValidator>
   </div>

    
    <div class="adminEnter" runat="server">
    <asp:Label ID="lblDescription" runat="server" Text="Product description:"></asp:Label></div>
    
    <div class="adminEnter" runat="server">
    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="ValDescription" runat="server" ControlToValidate="txtHeight" ErrorMessage="Error, please ensure a suitable description has been entered."></asp:RequiredFieldValidator>
    </div>

<div class="adminEnter" runat="server">
    <asp:Label ID="lblPrice" runat="server" Text="Price:"></asp:Label></div>


    <div class="adminEnter" runat="server">
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="ValPrice" runat="server" ControlToValidate="txtPrice" ErrorMessage="Error, please insert a price. Ensuring you entered as numbers."></asp:RequiredFieldValidator>
    </div>

    <div class="adminEnter" runat="server">
     <asp:Label ID="lblUpload" runat="server" Text="Upload Image:"></asp:Label>
    </div>

    <div class="adminEnter" runat="server">
     <asp:FileUpload ID="FileUpload" runat="server" />
    <asp:RequiredFieldValidator ID="ValImg" runat="server" ErrorMessage="Error, please ensure you have selected a suitable image." ControlToValidate="FileUpload"></asp:RequiredFieldValidator>
     </div>

    <div class="adminEnter" runat="server">
    <asp:Label ID="lblAltTxt" runat="server" Text="Alt Text:"></asp:Label>
    </div>

    <div class="adminEnter" runat="server">
    <asp:TextBox ID="txtAltTxt" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="ValAltTxt" runat="server" ErrorMessage="Error, please ensure you have entered a clear suitable description of the image uploaded." ControlToValidate="txtAltTxt"></asp:RequiredFieldValidator>
     </div>
    
    <div class="adminEnter" runat="server">
    <asp:Label ID="lblStock" runat="server" Text="Stock:"></asp:Label>
    </div>
    <div class="adminEnter" runat="server">
     <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="ValStock" runat="server" ErrorMessage="Error, please insert the number of stock avalible." ControlToValidate="txtStock"></asp:RequiredFieldValidator>
     </div>

    <div class="adminEnter" runat="server">
    <asp:Label ID="lblHeight" runat="server" Text="Height:"></asp:Label>
    </div>
    <div class="adminEnter" runat="server">
     <asp:TextBox ID="txtHeight" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="ValHeight" runat="server" ErrorMessage="Error, please insert the image height. Ensuring you enter just the number." ControlToValidate="txtHeight"></asp:RequiredFieldValidator>
     </div>
       
    <div class="adminEnter" runat="server">
        <asp:Label ID="lblWidth" runat="server" Text="Width:"></asp:Label>
    </div>
    <div class="adminEnter" runat="server">
     <asp:TextBox ID="txtWidth" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="ValWidth" runat="server" ErrorMessage="Error, please insert the image width. Ensuring you enter just the number." ClientIDMode="Inherit" ControlToValidate="txtWidth"></asp:RequiredFieldValidator>
    </div>
        <asp:Button ID="btnAdminAdd" runat="server"  Text="Add" OnClick="btnAdminAdd_Click" CssClass="btn"/>

    
     <asp:Literal ID="litAdd" runat="server"></asp:Literal>

    
     <p>View the current list of products below which are linked to the current database system.</p>
    

    <asp:GridView ID="gviewProducts" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="AdminProducts" gridlines="None" CssClass="adminTable">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="AltTxt" HeaderText="AltTxt" SortExpression="AltTxt" />
            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
            <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
            <asp:BoundField DataField="Width" HeaderText="Width" SortExpression="Width" />
        </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="AdminProducts" runat="server" ConnectionString="<%$ ConnectionStrings:db_1404159_WebsiteAssignmentConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Products] WHERE [Id] = @original_Id AND [ProductName] = @original_ProductName AND [Price] = @original_Price AND [Description] = @original_Description AND [AltTxt] = @original_AltTxt AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([Height] = @original_Height) OR ([Height] IS NULL AND @original_Height IS NULL)) AND (([Width] = @original_Width) OR ([Width] IS NULL AND @original_Width IS NULL))" InsertCommand="INSERT INTO [Products] ([ProductName], [Price], [Description], [AltTxt], [Stock], [Height], [Width]) VALUES (@ProductName, @Price, @Description, @AltTxt, @Stock, @Height, @Width)" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [Price] = @Price, [Description] = @Description, [AltTxt] = @AltTxt, [Stock] = @Stock, [Height] = @Height, [Width] = @Width WHERE [Id] = @original_Id AND [ProductName] = @original_ProductName AND [Price] = @original_Price AND [Description] = @original_Description AND [AltTxt] = @original_AltTxt AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) AND (([Height] = @original_Height) OR ([Height] IS NULL AND @original_Height IS NULL)) AND (([Width] = @original_Width) OR ([Width] IS NULL AND @original_Width IS NULL))">
         <DeleteParameters>
             <asp:Parameter Name="original_Id" Type="Int32" />
             <asp:Parameter Name="original_ProductName" Type="String" />
             <asp:Parameter Name="original_Price" Type="Double" />
             <asp:Parameter Name="original_Description" Type="String" />
             <asp:Parameter Name="original_AltTxt" Type="String" />
             <asp:Parameter Name="original_Stock" Type="Int32" />
             <asp:Parameter Name="original_Height" Type="Int32" />
             <asp:Parameter Name="original_Width" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="ProductName" Type="String" />
             <asp:Parameter Name="Price" Type="Double" />
             <asp:Parameter Name="Description" Type="String" />
             <asp:Parameter Name="AltTxt" Type="String" />
             <asp:Parameter Name="Stock" Type="Int32" />
             <asp:Parameter Name="Height" Type="Int32" />
             <asp:Parameter Name="Width" Type="Int32" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="ProductName" Type="String" />
             <asp:Parameter Name="Price" Type="Double" />
             <asp:Parameter Name="Description" Type="String" />
             <asp:Parameter Name="AltTxt" Type="String" />
             <asp:Parameter Name="Stock" Type="Int32" />
             <asp:Parameter Name="Height" Type="Int32" />
             <asp:Parameter Name="Width" Type="Int32" />
             <asp:Parameter Name="original_Id" Type="Int32" />
             <asp:Parameter Name="original_ProductName" Type="String" />
             <asp:Parameter Name="original_Price" Type="Double" />
             <asp:Parameter Name="original_Description" Type="String" />
             <asp:Parameter Name="original_AltTxt" Type="String" />
             <asp:Parameter Name="original_Stock" Type="Int32" />
             <asp:Parameter Name="original_Height" Type="Int32" />
             <asp:Parameter Name="original_Width" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>

</asp:Content>

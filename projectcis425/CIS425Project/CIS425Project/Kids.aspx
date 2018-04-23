<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="Kids.aspx.cs" Inherits="CIS425Project.Kids" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
       <h1>Kids Options</h1> <br />
    </p>

     <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
         <ItemTemplate>
                    <tr>                       
                        <td><asp:Button ID="Button1" runat="server" Text="Add to cart"  /></td>
                        <td><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' /></td>
                        <td><asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Description") %>' /></td>
                        <td><asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Price") %>' /></td>
                        <td><img src='<%# Eval("imageUrl") %>' width='200px' /> </td>
                    </tr>
                </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT Name, Description, Price, imageUrl, Department FROM product WHERE Department='Kids';"></asp:SqlDataSource>
    <br />

</asp:Content>

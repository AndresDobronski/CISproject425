<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="Womans.aspx.cs" Inherits="CIS425Project.Womans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <h1>Womans Options</h1>
        
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
         <ItemTemplate>
                    <tr>
                        <td><asp:Button ID="Button1" runat="server" Text="Add to Cart" /></td>
                        <td><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' /></td>
                        <td><asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Description") %>' /></td>
                        <td><asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Price") %>' /></td>
                        <td><img src='<%# Eval("imageUrl") %>' width='200px'/></td>
                    </tr>
                </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT Name, Description, Price, imageUrl, Department FROM product WHERE Department='Womens';"></asp:SqlDataSource>
    <br />
    </p>

    </asp:Content>

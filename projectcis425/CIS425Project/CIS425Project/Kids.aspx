<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="Kids.aspx.cs" Inherits="CIS425Project.Kids" %>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT Name, Description, Price, imageUrl, Department FROM product WHERE Department='Kids';"></asp:SqlDataSource>
    <br />
    </p>
     <script>
            $(document).ready(function () {
                $(".AddToCart").click(function () {
                    if (typeof(Cookies.get("cart_data")) == 'undefined') {
                        // need cookies
                        cart_data = { 'garbage': 'to make this a non-empty object' };
                        console.log('new cookie!');
                    } else {
                        // have cookie
                        cart_data = JSON.parse(Cookies.get('cart_data'));
                        console.log("exiting cookie");
                        console.log(cart_data);
                    }

                    item_id = $(this).attr('name');
                    name = $(".data-" + item_id.replace("add-","") + " td:nth-child(2)").text();
                    description = $(".data-" + item_id.replace("add-","") + " td:nth-child(3)").text();
                    price = $(".data-" + item_id.replace("add-","") + " td:nth-child(4)").text();
                    console.log(item_id + " - " + name + " - " + price);

                    if (item_id in cart_data) {
                        console.log("we have it existing");
                        cart_data[item_id]['qty'] = cart_data[item_id]['qty'] + 1;
                    }
                    else {
                        console.log("no existing");
                        cart_data[item_id] = { 'name': name, 'price': price, 'qty': 1, 'description': description };
                    }
                    console.log(cart_data);
                    //use this to remove cookies - attach to a button function 
                    Cookies.remove('cart_data');
                    cart_data = Cookies.set('cart_data', JSON.stringify(cart_data));
                });
            });
        </script>
    
    </asp:Content>

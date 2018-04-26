<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="CIS425Project.SearchResults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Search Result for
        &#39;<asp:Label ID="SearchLabel" runat="server"></asp:Label>
        &#39;</h1>
    <asp:Table ID="TableSearch" runat="server" Height="81px" Width="983px">
    </asp:Table>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
    <script>
            $(document).ready(function () {
                $(":submit").click(function () {
if($(this).val() == "Add to Cart"){
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

                    item_id = $(this).attr('name').replace("ctl00$ContentPlaceHolder1$","add-");
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
}
                });
            });
        </script>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="CIS425Project.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 295px;
        }
    .auto-style11 {
        width: 106px;
        height: 26px;
    }
    .auto-style12 {
        height: 26px;
    }
    .auto-style13 {
        width: 106px;
    }
    .auto-style14 {
        width: 113%;
        height: 145px;
    }
    .auto-style15 {
        width: 353px;
        height: 188px;
    }
    .auto-style16 {
        height: 39px;
    }
    .auto-style17 {
        width: 106px;
        height: 39px;
    }
    .auto-style18 {
        height: 54px;
    }
    .auto-style19 {
        width: 106px;
        height: 54px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Shopping Cart</h1> <br />
    <br />
    <table style="width:100%;" id="cart_list">
        <tr>
            <td class="auto-style11">Item</td>
            <td class="auto-style12">Description</td>
            <td class="auto-style12">Quantity</td>
            <td class="auto-style12">Price</td>
        </tr>
    </table>
<br />
<div class="auto-style15">
    <table class="auto-style14">
        <tr>
            <td>Total Summary </td>
            <td>&nbsp;</td>
            <td class="auto-style13"">&nbsp;</td>
        </tr>
        <tr>
            <td>Cost of items </td>
            <td>&nbsp;</td>
            <td class="auto-style13" id="cartCost"></td>
        </tr>
        <tr>
            <td>Applicable Tax ( .07 ) </td>
            <td>&nbsp;</td>
            <td class="auto-style13" id="cartTax"></td>
        </tr>
        <tr>
            <td class="auto-style16">Shipping Cost </td>
            <td class="auto-style16"></td>
            <td class="auto-style17">
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Total Cost </td>
            <td class="auto-style18"></td>
            <td class="auto-style13" id="cartTotal"></td>
        </tr>
    </table>
</div>
<br />
<br />
<br />
        <script>
            $(document).ready(function () {
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
                total_cost = 0
                $.each(cart_data, function (key, value) {
                    if (key != 'garbage') {
                        $('#cart_list').append('<tr><td class="auto-style10">' + cart_data[key]["name"] + '</td><td>' + cart_data[key]["description"] + '</td><td>' + cart_data[key]["qty"] + '</td><td>' + cart_data[key]["price"] + '</td></tr>')
                        total_cost = total_cost + cart_data[key]["qty"] * cart_data[key]["price"];
                    }
                });
                $("#cartCost").text("$"+total_cost);
                tax = total_cost * 0.07
                $("#cartTax").text("$" +tax);
                total = tax + total_cost;
                $("#cartTotal").text("$"+total)
            });
        </script>
    

       
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
</asp:Content>
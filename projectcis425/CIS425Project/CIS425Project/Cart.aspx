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
    <table style="width:100%;">
        <tr>
            <td class="auto-style11">Item</td>
            <td class="auto-style12">Description</td>
            <td class="auto-style12">Quantity</td>
            <td class="auto-style12">Price</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
<br />
<div class="auto-style15">
    <table class="auto-style14">
        <tr>
            <td>Total Summary </td>
            <td>&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td>Cost of items </td>
            <td>&nbsp;</td>
            <td class="auto-style13">
                <asp:Label ID="costOfItemsLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Applicable Tax ( .07 ) </td>
            <td>&nbsp;</td>
            <td class="auto-style13">
                <asp:Label ID="applicableTaxLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Shipping Cost </td>
            <td class="auto-style16"></td>
            <td class="auto-style17">
                <asp:Label ID="shippingCostLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">Total Cost </td>
            <td class="auto-style18"></td>
            <td class="auto-style19">
                <asp:Label ID="totalCostLabel" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</div>
<br />
<br />
<br />
</asp:Content>

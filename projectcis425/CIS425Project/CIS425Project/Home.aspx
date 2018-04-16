<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CIS425Project.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 1163px;
        height: 419px;
        margin-top: 0px;
    }
    #Content2 {
        align-content:center;
    }
        .auto-style18 {
            text-align: center;
        }
        .auto-style19 {
            width: 417px;
        }
        .auto-style20 {
            width: 407px;
        }
        .newStyle5 {
            position: relative;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/NikeAd.jpg" Width="100%" Height="790px" />
<h2 class="auto-style18">Popular Shoes</h2>
<p>
    <table class="newStyle5" style="width:100%;">
        <tr>
            <td class="auto-style19">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/ShoeImages/Adidas-Yeezy-Boost-350-V2-Core-Black-White.jpg" Width="400px" />
            </td>
            <td class="auto-style20">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/ShoeImages/adidas yeezy boost 350 v2 beluga-505asx.jpg" Width="400px" />
            </td>
            <td>
                <asp:Image ID="Image5" runat="server" ImageUrl="~/ShoeImages/Nike-Free-5.0-side-blue.jpg" Width="400px" Height="200px" />
            </td>
        </tr>
    </table>
</p>
</asp:Content>

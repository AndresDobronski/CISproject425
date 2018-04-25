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
</asp:Content>

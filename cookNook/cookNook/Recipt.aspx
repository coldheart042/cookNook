<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Recipt.aspx.cs" Inherits="cookNook.Recipt1" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
    <asp:Table ID="tblUser" runat="server">
        <asp:TableRow ID ="tbrName">
            <asp:TableCell ID ="celNameFirst" runat="server" Text=""></asp:TableCell>
            <asp:TableCell ID ="celNameLast" runat="server" Text=""></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID ="TableRow1">
            <asp:TableCell ID ="celAddress" runat="server" Text="" ColumnSpan="2"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID ="TableRow2">
            <asp:TableCell ID ="celCity" runat="server" Text=""></asp:TableCell>
            <asp:TableCell ID ="celState" runat="server" Text=""></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID ="TableRow3">
            <asp:TableCell ID ="celZip" runat="server" Text=""></asp:TableCell>
            <asp:TableCell ID ="celPhone" runat="server" Text=""></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <hr/>
    <asp:Table ID="tblCart" runat="server"></asp:Table>
    <asp:Button ID="Button1" runat="server" Text="Button" /><asp:Button ID="Button2" runat="server" Text="Button" /><asp:Button ID="Button3" runat="server" Text="Button" />
</asp:Content>

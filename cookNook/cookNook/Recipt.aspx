<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Recipt.aspx.cs" Inherits="cookNook.Recipt1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
    <asp:Table ID="tblUser" runat="server">
        <asp:TableRow ID ="tbrName">
            <asp:TableCell ID ="celNameFirst" runat="server" Text=""></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID ="TableRow1">
            <asp:TableCell ID ="celAddress" runat="server" Text="" ColumnSpan="2"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID ="TableRow2">
            <asp:TableCell ID ="celCity" runat="server" Text=""></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID ="TableRow3">
            <asp:TableCell ID ="celZip" runat="server" Text=""></asp:TableCell>
            
        </asp:TableRow>
        <asp:TableRow ID="Tablerow4">
            <asp:TableCell ID ="celPhone" runat="server" Text=""></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <hr/>
    <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AutoGenerateSelectButton="True" Width="424px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" /><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
</asp:Content>

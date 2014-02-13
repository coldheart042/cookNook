<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Recipt.aspx.cs" Inherits="cookNook.Recipt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 50%;" class="formTable">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtNameFirst" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtNameLast" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtAddress" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCity" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtState" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label6" runat="server" Text="Zip"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtZip" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtEmail" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label9" runat="server" Text="Phone"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPhone" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnCorrect" runat="server" Text="Correct" OnClick="Button1_Click" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

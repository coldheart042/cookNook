﻿<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="cookNook.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 127px;
        }
        .auto-style2 {
            width: 561px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1>New Customer Registration</h1>
    <table style="width: 50%;" class="formTable">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtNameFirst" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtNameLast" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label6" runat="server" Text="Zip"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label9" runat="server" Text="Phone"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            </td>
            
        </tr>
    </table>
</asp:Content>

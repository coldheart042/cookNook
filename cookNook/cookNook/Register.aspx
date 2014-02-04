﻿<%@ Page Title="Sign up" Language="C#" MasterPageFile="~/mpgCookNook.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="cookNook.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 241px;
        }
        .auto-style4 {
            width: 241px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <th colspan="2">Sign up</th>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
            </td>
            <td class="form"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td class="form">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="form">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
            </td>
            <td class="form">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
            </td>
            <td class="form"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label8" runat="server" Text="Zip"></asp:Label>
            </td>
            <td class="form">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label9" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="form">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="form">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label11" runat="server" Text="Phone"></asp:Label>
            </td>
            <td class="form">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="form">
                <asp:Button ID="Button2" runat="server" Text="Button" Width="195px" />
            </td>
        </tr>
    </table>
</asp:Content>
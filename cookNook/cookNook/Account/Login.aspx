﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="cookNook.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#accordion").accordion({ heightStyle: "fill" });
        });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label runat="server" ID="lblReg"></asp:Label>
    <div id="accordion">
        <h3>New Customer Registration (Click to expand)</h3>
        <div>    
                <asp:CompareValidator ID="pwValidator" runat="server" ControlToValidate="txtPassword" ErrorMessage="Passwords must match!" ControlToCompare="txtRePassword" ForeColor="Red"></asp:CompareValidator><br />
                <asp:RequiredFieldValidator ID="fnValidator" runat="server" ErrorMessage="First name can't be blank!" ForeColor="Red" ControlToValidate="txtNameFirst"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="lnValidator" runat="server" ErrorMessage="Last name can't be blank!" ForeColor="Red" ControlToValidate="txtNameLast"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="zipValidator" runat="server" ErrorMessage="Zip Code can't be blank!" ForeColor="Red" ControlToValidate="txtZip"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="emailValidator" runat="server" ErrorMessage="Email can't be blank!" ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="pwRequired" runat="server" ErrorMessage="Password can't be blank!" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator><br />
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
                            <asp:TextBox ID="txtZip" runat="server" TextMode="Number" MaxLength="5"></asp:TextBox>
                        </td>
                        
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
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
                            <asp:Label ID="Label11" runat="server" Text="Re-enter Password"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtRePassword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label9" runat="server" Text="Phone"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"></asp:TextBox>
                        </td>
                        
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                        </td>
                        
                    </tr>
                </table>

            </div>
        <h3>Log in</h3>
        <div>
            <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
            </asp:Login>
        </div>
    </div>
</asp:Content>

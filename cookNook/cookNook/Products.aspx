<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="cookNook.Products" %>
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
    <div>
        <h1>Products list<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="dsProducts" ForeColor="Black" GridLines="None" Width="800px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:ImageField DataImageUrlField="FileName" HeaderText="Image">
                </asp:ImageField>
                <asp:BoundField DataField="PartNumber" HeaderText="PartNumber" SortExpression="PartNumber" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="OnHand" HeaderText="OnHand" SortExpression="OnHand" />
                <asp:BoundField DataField="FileName" HeaderText="FileName" SortExpression="FileName" Visible="False" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
               
                <asp:ButtonField ButtonType="Button" Text="Buy!" />
               
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle ForeColor="DarkSlateBlue" HorizontalAlign="Center" BackColor="PaleGoldenrod" />
            <RowStyle BorderStyle="Solid" Width="200px" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        </h1>
        <asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:WILLIAMS_w13ConnectionString %>" SelectCommand="SELECT [PartNumber], [Description], [Price], [OnHand], [FileName] FROM [tblProducts]"></asp:SqlDataSource>
    </div>
</asp:Content>

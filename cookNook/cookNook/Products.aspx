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
        <h1>Products list</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="dsProducts" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ItemSKU" HeaderText="SKU" SortExpression="ItemSKU" />
                <asp:BoundField DataField="ItemName" HeaderText="Name" SortExpression="ItemName" />
                <asp:BoundField DataField="ItemPrice" HeaderText="Price" SortExpression="ItemPrice" />
                <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
                <asp:BoundField DataField="OnHand" HeaderText="On-Hand" SortExpression="OnHand" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:TextBox ID="txtQty" runat="server" TextMode="Number"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" SelectText="BUY!" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:WILLIAMS_w13ConnectionString %>" SelectCommand="SELECT [ItemSKU], [ItemName], [ItemPrice], [Discount], [OnHand] FROM [tblProducts]"></asp:SqlDataSource>
    </div>
</asp:Content>

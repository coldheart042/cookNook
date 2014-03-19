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
        <asp:Label ID="lblErrorMsg" runat="server" Text="" ForeColor="Red"></asp:Label>
        <div id="accordion">    
            <h3>Shopping Cart: (Click to expand)</h3>
            <div>
        <asp:Table ID="tblCart" runat="server" GridLines="Both" Width="800px">
            <asp:TableRow>
                <asp:TableCell BorderStyle="Solid" BorderWidth="1px" BorderColor="#808080">Quantity</asp:TableCell>
                <asp:TableCell BorderStyle="Solid" BorderWidth="1px" BorderColor="#808080">Part No.</asp:TableCell>
                <asp:TableCell BorderStyle="Solid" BorderWidth="1px" BorderColor="#808080">Description</asp:TableCell>
                <asp:TableCell BorderStyle="Solid" BorderWidth="1px" BorderColor="#808080">Price</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
                <asp:Label id="lblEmpty" runat="server" Text="Cart is empty!"></asp:Label>
                <asp:Button ID="btnCheckOut" runat="server" Text="Check out" OnClick="btnCheckOut_Click" Visible="False" />
        </div>
            <h3>Products list: (Click to expand)</h3>
            
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="dsProducts" ForeColor="Black" GridLines="None" Width="800px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:ImageField DataImageUrlField="FileName" HeaderText="Image"></asp:ImageField>
                            <asp:BoundField DataField="PartNumber" HeaderText="Part No." SortExpression="PartNumber" >
                            <ItemStyle Width="7em" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" DataFormatString="{0:c}" />
                            <asp:BoundField DataField="OnHand" HeaderText="In Stock" SortExpression="OnHand" />
                            <asp:BoundField DataField="FileName" HeaderText="Image" SortExpression="FileName" Visible="False" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" Text="0"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>               
                            <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Buy"/>               
                            <asp:BoundField DataField="OnHand" />
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
                <asp:SqlDataSource ID="dsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:WILLIAMS_w13ConnectionString %>" SelectCommand="SELECT [PartNumber], [Description], [Price], [OnHand], [FileName] FROM [tblProducts]"></asp:SqlDataSource>
            
        </div>  
</asp:Content>

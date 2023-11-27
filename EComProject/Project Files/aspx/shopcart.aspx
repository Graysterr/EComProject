<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shopcart.aspx.cs" Inherits="EComProject.Project_Files.aspx.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>shopping cart</title>
    <link rel="stylesheet" type="text/css" href="shoppingcart.css" /> 
</head>

<body>
    <form id="form1" runat="server">
        <div class="shopping-cart">
        <h1>Shopping Cart</h1>
        
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID">
                <Columns>
                    <asp:BoundField DataField="ProductName" HeaderText="Product" />
                    <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="{0:C}" />
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Bind("Quantity") %>' Width="30"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total">
                        <ItemTemplate>
                            <%# Eval("Total", "{0:C}") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" HeaderText="Action" />
                </Columns>
            </asp:GridView>

            <asp:Button ID="btnCheckout" runat="server" Text="Checkout" OnClick="btnCheckout_Click" />
        </div>
        
    </form>
</body>
</html>

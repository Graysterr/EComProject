<%@ Page Title="" Language="C#" MasterPageFile="~/Project Files/aspx/Site1.Master" AutoEventWireup="true" CodeBehind="Product1.aspx.cs" Inherits="EComProject.Project_Files.aspx.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        body{
            font-family: 'Rubik', sans-serif;
        }
        .product-details {
            margin: 20px;
            display: flex;
            align-items: flex-start;
            justify-content: center; /* Center the content horizontally */
            text-align: left; /* Align text to the left */
        }

        .product-image {
            width: 30%; /* Adjust the width as needed */
        }

        .product-info {
            flex: 1;
            max-width: 20%; /* Adjust the max-width as needed */
        }

        /* Adjustments to fit the overall CSS */
        .product-details h2 {
            margin-bottom: 10px;
            font-size: 24px; /* Adjust the font size as needed */
        }

        .product-details p {
            margin-bottom: 5px;
            font-size: var(--font-small);
        }

        .product-details ul {
            padding: 0;
            list-style: none;
            margin-top: 10px;
            text-align: left; /* Align text to the left */
        }

        .product-details ul li {
            margin-bottom: 5px;
            font-size: var(--font-small);
        }

        .addToCartButton,
        .quantityDropdown {
            font-family: 'Rubik', sans-serif;
            width: 45%; /* Adjust the width for both controls */
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin: 5px; /* Add some margin for separation */
            display: inline-block; /* Make them inline-block to be in the same line */
            align-content: center;
        }

        .quantityDropdown {
            width: 40%; /* Adjust the width for the dropdown specifically */
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="product-details">
        <!-- Product Image -->
        <div class="product-image">
            <img src="../Images/Abayas/1.jpeg" alt="Product Image" style="width: 150%; max-width: 300px; height: auto;" />
        </div>

        <!-- Product Info -->
        <div class="product-info">
            <h2>Product Name</h2>
            <p>Price: 350 SAR</p>

            <!-- Quantity Adjustment -->
            <asp:DropDownList ID="ddlQuantity" runat="server" CssClass="quantityDropdown">
                <asp:ListItem Text="1" Value="1" />
                <asp:ListItem Text="2" Value="2" />
                <asp:ListItem Text="3" Value="3" />
                
            </asp:DropDownList>

            <!-- Add to Cart Button -->
            <asp:Button ID="addToCartButton" runat="server" CssClass="addToCartButton" Text="Add to Cart" OnClick="AddToCart_Click" />

            <!-- Message for Unregistered Users -->
            <asp:Label ID="registrationMessage" runat="server" Visible="false" ForeColor="Red"></asp:Label>

            <!-- Product Details List -->
            <ul>
                <li>Detail 1: Lorem ipsum dolor sit amet</li>
                <li>Detail 2: Consectetur adipiscing elit</li>
                <!-- Add more details as needed -->
            </ul>
        </div>
    </div>

</asp:Content>

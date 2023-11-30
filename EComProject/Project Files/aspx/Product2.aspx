<%@ Page Title="" Language="C#" MasterPageFile="~/Project Files/aspx/Site1.Master" AutoEventWireup="true" CodeBehind="Product2.aspx.cs" Inherits="EComProject.Project_Files.aspx.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
	@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&family=Rubik:wght@300;400;500;600&display=swap');

	/*
	Fonts:
	Poppins: 300, 400, 500, 600, 700, 800
	Rubik: 300, 400, 500, 600
	*/

	:root {
    	    --primary-color: #080808;
            --secondary-color: #9A907C;

            --white-color: #FFFFFF;
            --light-bg-color: #F2F3F5;
            --light-text-color: #9A907C;
            --border-color: #E5E8EC;
            --dark-color: #0A021C;

            --font-small: 15px;
            --font-smaller: 11px;

            --percent100: 100%;
            --percent50: 50%;

            --fw3: 300;
            --fw5: 500;
            --fw6: 600;
            --fw7: 700;
            --fw8: 800;

            --trans-background-color: background-color .36s color .36s;
            --trans-background: background-color .36s;
            --trans-color: color .36s;
}
	

        .product-details {
            margin: 20px;
            display: flex;
            align-items: flex-start;
        }

        .product-image {
            width: 30%; /* Adjust the width as needed */
            margin-right: 20px;
        }

        .product-info {
            flex: 1;
        }

        /* Customize the button styles */
        #addToCartButton {
            background-color: var(--primary-color);
            color: #FFFFFF;
            padding: 10px 15px;
            font-size: var(--font-small);
            cursor: pointer;
            margin-top: 10px;
        }

        #addToCartButton:hover {
            background-color: var(--secondary-color);
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
        }

        .product-details ul li {
            margin-bottom: 5px;
            font-size: var(--font-small);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="product-details">
        <!-- Product Image -->
        <div class="product-image">
            <img src="../Images/Abayas/2.jpeg" alt="Product Image" style="width: 120%; max-width: 200px; height: auto;" />
        </div>

        <!-- Product Info -->
        <div class="product-info">
            <h2>Product Name</h2>
            <p>Price: $19.99</p>

            <!-- Quantity Adjustment -->
            <label for="quantity">Quantity:</label>
            <asp:TextBox ID="quantity" runat="server" Text="1"></asp:TextBox>

            <!-- Add to Cart Button -->
            <asp:Button ID="addToCartButton" runat="server" Text="Add to Cart" OnClick="AddToCart_Click" />

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

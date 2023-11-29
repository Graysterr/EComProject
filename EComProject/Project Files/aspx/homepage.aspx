<%@ Page Title="" Language="C#" MasterPageFile="~/Project Files/aspx/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="EComProject.Project_Files.aspx.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&family=Rubik:wght@300;400;500;600&display=swap');

        /*
        Fonts:
        Poppins: 300, 400, 500, 600, 700, 800
        Rubik: 300, 400, 500, 600
        */
        .product-container {
            display: flex;
            gap: 20px;
        }

        .product {
            display: block;
            margin-top: 10%;
            margin-left: auto;
            margin-right: auto;
            width: 50%;
            position: relative;
            overflow: hidden; /* Ensure the button does not overflow outside the image */
        }

        .product img {
            width: 206px;
            height: 319px;
            margin-bottom: 10px;
            transition: transform 0.3s ease-in-out; /* Add a smooth transition for the image */
        }

        .add-to-cart-btn {
            font-family: 'Rubik', sans-serif;
            background-color: #080808;
            color: #FFFFFF;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%) scale(0.8); /* Initial scale to 80% */
            opacity: 0; /* Initially transparent */
            transition: transform 0.3s ease-in-out, opacity 0.3s ease-in-out; /* Add transitions */
        }

        .product:hover img {
            transform: scale(1.1); /* Enlarge the image on hover */
        }

        .product:hover .add-to-cart-btn {
            transform: translate(-50%, -50%) scale(1); /* Expand the button on hover */
            opacity: 0.8; /* Show the button with low opacity on hover */
        }
        h1 {
            font-family: 'Rubik', sans-serif;
            font-size: calc(1.3em + 1vw);
            font-weight: 800;
            line-height: 1;
            margin-bottom: 20px; /* Add space between h1 and products */
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Available Abayas</h1>
        <div class="product-container">
            <%-- Add your product items here --%>
            <div class="product">
                <img src="../Images/Abayas/1.jpeg" alt="Product 1" />
                <br />
                <%--<button class="add-to-cart-btn" onclick="Webform3.aspx">Product Details</button>--%>
                <asp:Button class="add-to-cart-btn" ID="Button1" runat="server" Text="Product Details" />
            </div>

            <div class="product">
                <img src="../Images/Abayas/2.jpeg" alt="Product 2" />
                <br />
                <button class="add-to-cart-btn" onclick="addToCart(2)">Product Details</button>
            </div>

            <div class="product">
                <img src="../Images/Abayas/3.jpeg" alt="Product 3" />
                <br />
                <button class="add-to-cart-btn" onclick="addToCart(3)">Product Details</button>
            </div>

            <div class="product">
                <img src="../Images/Abayas/4.jpeg" alt="Product 4" />
                <br />
                <button class="add-to-cart-btn" onclick="addToCart(4)">Product Details</button>
            </div>

            <%-- Add more product items as needed --%>
    </div>

    <script>
        function addToCart(productId) {
            // Add your logic to handle the "Add to Cart" button click
            // You can use AJAX to send the productId to the server or perform any other desired action
            alert("Product added to cart: " + productId);
        }
    </script>
</asp:Content>

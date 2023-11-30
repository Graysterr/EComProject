using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace EComProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["productName"] != null &&
            Request.QueryString["productPrice"] != null &&
            Request.QueryString["quantity"] != null)
                {
                    string productName = Request.QueryString["productName"];
                    decimal productPrice = decimal.Parse(Request.QueryString["productPrice"]);
                    int quantity = int.Parse(Request.QueryString["quantity"]);

                    // Add the product to the shopping cart
                    AddProductToCart(productName, productPrice, quantity);
                }
                BindGridView();
            }
        }
        private void AddProductToCart(string productName, decimal productPrice, int quantity)
        {
            // Implement your logic to add the product to the shopping cart
            // For demonstration purposes, let's assume you're using a session variable to store cart products

            // Retrieve the existing cart products from the session
            List<CartItem> cartProducts = Session["CartProducts"] as List<CartItem> ?? new List<CartItem>();

            // Check if the product is already in the cart
            CartItem existingProduct = cartProducts.FirstOrDefault(p => p.ProductName == productName);

            if (existingProduct != null)
            {
                // Update the quantity if the product is already in the cart
                existingProduct.Quantity += quantity;
            }
            else
            {
                // Add the product to the cart
                CartItem newProduct = new CartItem
                {
                    ProductName = productName,
                    Price = productPrice,
                    Quantity = quantity
                };

                cartProducts.Add(newProduct);
            }

            // Update the session variable with the modified cart products
            Session["CartProducts"] = cartProducts;
        }

        private void BindGridView()
        {
            string connectionString = @"Server=localhost;Database=databasecart;Uid=root;Pwd=pmu2108;";

            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM ShoppingCart", con))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        List<int> cartProducts = Session["CartProducts"] as List<int> ?? new List<int>();
                        DataTable dt = new DataTable();
                        sda.Fill(dt);

                        // Bind the DataTable to the GridView
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }
        protected void GridView1_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            int productID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            // Implement your logic to remove the product from the shopping cart (e.g., update the data source).
            // Here, you might want to delete the corresponding row from the database.
            DeleteProductFromDatabase(productID);

            // Refresh the GridView
            BindGridView();
        }

        private void DeleteProductFromDatabase(int productID)
        {
            // Implement your logic to delete the product from the database.
            // Use a DELETE query or a stored procedure, depending on your preference.
        }
        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            // Handle checkout logic (redirect to payment page, process order, etc.).
            Response.Write("your order will be in the checkout");
        }
        public class CartItem
        {
            public string ProductName { get; set; }
            public decimal Price { get; set; }
            public int Quantity { get; set; }
        }
    }
}
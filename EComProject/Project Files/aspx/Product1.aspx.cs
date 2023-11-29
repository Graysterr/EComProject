using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EComProject.Project_Files.aspx
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // You can dynamically populate product details based on your data source
            // For simplicity, we'll use static values here
            if (!IsPostBack)
            {
                // PopulateProductDetails(); // Implement this method to fetch details from your database
            }
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            // Check if the user is registered (you need to implement this logic based on your authentication mechanism)
            bool isUserRegistered = true; // Replace this with your actual logic

            if (isUserRegistered)
            {
                // Logic to add the product to the cart goes here
                // You may want to store the product ID, quantity, etc. in a session or database
                // For now, let's just display a message
                registrationMessage.Visible = false; // Hide the registration message
                registrationMessage.Text = "Product added to the cart!";
            }
            else
            {
                // Display a message indicating that the user needs to be registered
                registrationMessage.Visible = true;
                registrationMessage.Text = "You must be registered to add a product to the cart.";
            }
        }
    }
}
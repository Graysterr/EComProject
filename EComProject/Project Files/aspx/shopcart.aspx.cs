using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace EComProject.Project_Files.aspx
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            // Replace this connection string with your actual MySQL connection string
            string connectionString = @"Server=localhost;Database=databasecart;Uid=root;Pwd=pmu2108;";

            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM ShoppingCart", con))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        //sda.Fill(dt);

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
            Response.Redirect("CheckoutPage.aspx");
        }
    }
}
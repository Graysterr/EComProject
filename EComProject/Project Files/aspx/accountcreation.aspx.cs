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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) 
            {
                lblMessage.Text = ""; // Clear error message on postback
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text;
            string email = txtEmail.Text.Trim();

            if (!IsUsernameUnique(username))
            {
                lblMessage.Text = "Username is already in use. Please choose a different one.";
                return;
            }

            // Create the user account using MySQL Connector
            string connectionString = "Server=localhost;Database=databasecart;Uid=root;Pwd=pmu2108;";

            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                try
                {
                    con.Open();

                    // Use parameterized query to prevent SQL injection
                    string insertQuery = "INSERT INTO Users (Username, Email, Pwd) VALUES (@Username, @Email, @Pwd)";
                    using (MySqlCommand cmd = new MySqlCommand(insertQuery, con))
                    {
                        cmd.Parameters.AddWithValue("@Username", username);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Pwd", HashPassword(password));
                        cmd.ExecuteNonQuery();

                        lblMessage.Text = "Account created successfully!";
                        // Optionally, you can redirect the user to another page after successful account creation.
                        // Response.Redirect("Login.aspx");
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error creating account: " + ex.Message;
                }
                finally
                {
                    con.Close();
                }
            }
        }

        private bool IsUsernameUnique(string username)
        {
            // Implement your logic to check if the username is unique in the database
            // You might query the Users table to see if the username already exists
            // Return true if the username is unique, false otherwise
            return true;
        }
        protected void btnFacebook_Click(object sender, EventArgs e)
        {
            // Handle the click event for the Facebook button
            lblMessage.Text = "Logged in through Facebook Successfully!";
        }

        protected void btnTwitter_Click(object sender, EventArgs e)
        {
            // Handle the click event for the Twitter button
            lblMessage.Text = "Logged in through Twitter Successfully!";
        }

        protected void btnGoogle_Click(object sender, EventArgs e)
        {
            // Handle the click event for the Google button
            lblMessage.Text = "Logged in through Google Successfully!";
        }

        private string HashPassword(string password)
        {
            // Implement proper password hashing mechanism (e.g., using bcrypt or Argon2)
            // Return the hashed password
            return password; // Replace with actual hashed password
        }

    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace registrationSystem
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        SqlConnection connection = new SqlConnection("Data Source=./;Initial Catalog=dbss;Integrated Security=True");


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                Response.Write("<script>alert('All fields are required.')</script>");
                return;
            }

            string connectionString = "Data Source=.;Initial Catalog=dbss;Integrated Security=True";

            int userId = AuthenticateUserAndGetUserId(email, password, connectionString);

            if (userId != 0)
            {
                InsertLoginDetails(email, password, userId, connectionString);
                Response.Redirect("welcome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid email or password.')</script>");
            }
        }

        private int AuthenticateUserAndGetUserId(string email, string password, string connectionString)
        {
            int userId = 0;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT ID FROM PersonalDetails WHERE email = @Email AND password = @Password";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", password);

                    try
                    {
                        connection.Open();
                        var result = command.ExecuteScalar();
                        if (result != null)
                        {
                            userId = Convert.ToInt32(result);
                        }
                    }
                    catch (Exception e)
                    {
                        Response.Write(e.Message);
                    }
                }
            }

            return userId;
        }

        private void InsertLoginDetails(string email, string password, int userId, string connectionString)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Login (email, password, user_id) VALUES (@Email, @Password, @UserId)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", password);
                    command.Parameters.AddWithValue("@UserId", userId);

                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                    catch (Exception e)
                    {
                        Response.Write(e.Message);
                    }
                }
            }
        }

    }
}
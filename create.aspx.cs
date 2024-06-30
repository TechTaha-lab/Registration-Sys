using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace registrationSystem
{
    public partial class create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection connection = new SqlConnection("Data Source=./;Initial Catalog=dbss;Integrated Security=True");

        protected void add(object sender, EventArgs e)
        {
            string connectionString = "Data Source=./;Initial Catalog=dbss;Integrated Security=True";

            string fullNames = full_name.Text;
            string mail = email.Text;
            string addres = address.Text;
            string citys = city.Text;
            string cntry = country.Text;
            string stats = state.Text;
            string zpcode = zipcode.Text;

            if (!IsEmailExists(mail, connectionString))
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                 string query = "INSERT INTO PersonalDetails (FullName, Email, password, City, Country, State, Zipcode) " +
                                   "VALUES (@FullName, @Email, @Address, @City, @Country, @State, @Zipcode)";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@FullName", fullNames);
                        command.Parameters.AddWithValue("@Email", mail);
                        command.Parameters.AddWithValue("@Address", addres);
                        command.Parameters.AddWithValue("@City", citys);
                        command.Parameters.AddWithValue("@Country", cntry);
                        command.Parameters.AddWithValue("@State", stats);
                        command.Parameters.AddWithValue("@Zipcode", zpcode);

                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();
                        connection.Close();

                        if (rowsAffected > 0)
                        {
                            Response.Write("<script>alert('Data inserted successfully!')</script>");
                            Response.Redirect("login.aspx");
                        }
                        else
                        {
                            Response.Write("<script>alert('failed to insert data')</script>");
                        }
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Email ALready Exist')</script>");
            }
        }

        private bool IsEmailExists(string email, string connectionString)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM PersonalDetails WHERE Email = @Email";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);

                    connection.Open();
                    int count = (int)command.ExecuteScalar();
                    connection.Close();

                    return count > 0;
                }
            }
        }

    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace registrationSystem
{
    public partial class forgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection connection = new SqlConnection("Data Source=./;Initial Catalog=dbss;Integrated Security=True");

        protected void btnResetPassword_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string query = "SELECT Email FROM PersonalDetails WHERE Email = @Email";

            try
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            Response.Write("<script>alert('Email sent successfully. Check your mail.')</script>");
                        }
                        else
                        {
                            Response.Redirect("create.aspx");
                        }
                    }
                }
            }
            catch (Exception error)
            {
                Response.Write("<script>alert('" + error.Message + "')</script>");
            }
            finally
            {
                connection.Close();
            }
        }

    }
}
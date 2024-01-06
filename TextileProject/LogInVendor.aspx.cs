using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TextileProject
{
    public partial class LogInVendor : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Session["Name"] as string;

            if (user != null)
            {
                pnlLogIn.Visible = false;
                pnlUser.Visible = true;
                lblName.Text = user.ToString();

                string query1 = "SELECT Company FROM Vendor WHERE Name = @name";
                SqlCommand cmd = new SqlCommand(query1, cnn);

                // Kullanıcı adını parametre olarak kullan
                cmd.Parameters.AddWithValue("@name", user);

                cnn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    string company = dr["Company"].ToString();
                    lblCompany.Text = company;
                }
                else
                {
                    lblResult.Text = "Vendor Company not found.";
                }

                cnn.Close();
            }
            else
            {
                pnlLogIn.Visible = true;
                pnlUser.Visible = false;
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text != "" && txtPassword.Text != "")
            {
                string query = "insert into Vendor (Name, Password) values (@name, @password)";
                SqlCommand cmd = new SqlCommand(query, cnn);
                cnn.Open();

                try
                {
                    cmd.Parameters.AddWithValue("@name", txtUserName.Text);
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text);

                    cmd.ExecuteNonQuery();
                    cnn.Close();

                    lblResult.Text = "Registration successful.";
                }
                catch
                {
                    lblResult.Text = "Registration failed.";
                }
            }
            else
            {
                lblResult.Text = "Fill in the blanks";
            }
        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            string query = "select * from Vendor where Name = @name and Password = @password";
            SqlCommand cmd = new SqlCommand(query, cnn);

            cmd.Parameters.AddWithValue("@name", txtUserName.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);

            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session.Timeout = 300;
                Session.Add("Name", dr["Name"].ToString());
                Response.Redirect(Request.RawUrl);
                lblResult.Text = "Vendor Login Successfull.";
            }
            else
            {
                lblResult.Text = "Vendor Login Failed.";
            }

            cnn.Close();
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect(Request.RawUrl);
        }
    }
}
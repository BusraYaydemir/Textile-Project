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
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMenuItems();
            }
        }

        private void BindMenuItems()
        {
            // Veritabanı bağlantı dizesini Web.config dosyasından alın
            string connectionString = ConfigurationManager.ConnectionStrings[0].ConnectionString;

            string company = FindCompany();

            // SQL sorgusu
            string query = "SELECT * FROM [Orders] WHERE [OrderingCompany] = @company";
            

            // SqlConnection nesnesini oluşturun ve SqlCommand ile SqlDataReader'ı açın
            using (SqlConnection cnn = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand(query, cnn))
            { 
                
                // Kullanıcı adını parametre olarak kullan
                cmd.Parameters.AddWithValue("@company", company);


                try
                {
                    // Veritabanı bağlantısını açın ve SqlDataReader'ı alın
                    cnn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    // Repeater kontrolünü bağlayın
                    orderRepeater.DataSource = dr;
                    orderRepeater.DataBind();

                    // DataReader'ı kapatın
                    dr.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Hata oluştu: " + ex.Message);
                }
            }
        }


        private string FindCompany()
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

            string user = Session["Name"] as string;

            string query1 = "SELECT Company FROM [Admin] WHERE Name = @name " +
                            "UNION " +
                            "SELECT Company FROM [User] WHERE Name = @name " +
                            "UNION " +
                            "SELECT Company FROM [Vendor] WHERE Name = @name";

            SqlCommand cmd = new SqlCommand(query1, cnn);

            // Kullanıcı adını parametre olarak kullan
            cmd.Parameters.AddWithValue("@name", user);

            try
            {
                cnn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    string company = dr["Company"].ToString();
                    lblCompany.Text = company + "'s Orders";
                    return company;
                }
                else
                {
                    lblCompany.Text = "Company not found.";
                    return "Company not found.";
                }
            }
            catch (Exception ex)
            {
                lblCompany.Text = "please login to the system";
                return "Error";
            }
            finally
            {
                cnn.Close();
            }
        }


    }
}
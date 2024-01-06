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
    public partial class Products : System.Web.UI.Page
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

            // SQL sorgusu
            string query = "SELECT * FROM Products";

            // SqlConnection nesnesini oluşturun ve SqlCommand ile SqlDataReader'ı açın
            using (SqlConnection cnn = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand(query, cnn))
            {
                try
                {
                    // Veritabanı bağlantısını açın ve SqlDataReader'ı alın
                    cnn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    // Repeater kontrolünü bağlayın
                    menuRepeater.DataSource = dr;
                    menuRepeater.DataBind();

                    // DataReader'ı kapatın
                    dr.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Hata oluştu: " + ex.Message);
                }
            }
        }
    }
}
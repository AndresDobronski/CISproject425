using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CIS425Project
{
    public partial class SearchResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string dbServer = "cis425.wpcarey.asu.edu"; //"<Server IP or Hostname>"
            string username = "adobrons";      // "<DB username>"
            string password = "thickTHREE30";      // "<DB password>"
            string dbName = "group06";  // "<DB name>"

            string dbConnectionString = string.Format("server={0};uid={1};pwd={2};database={3};",
                            dbServer, username, password, dbName);

            var conn = new MySql.Data.MySqlClient.MySqlConnection(dbConnectionString);
            conn.Open();
     
            string query = "SELECT * FROM products WHERE Name LIKE '%"+ SearchLabel.Text +"%';";

            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, conn);
            var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                var productName = reader["Name"];
                var productPrice = reader["Price"];
                var imageLink = reader["imgURL"];

                

                TableRow tRow = new TableRow();
                TableCell BuybuttonCell = new TableCell();
                TableCell nameCell = new TableCell();
                TableCell priceCell = new TableCell();
                TableCell imageCell = new TableCell();

                Image productImage = new Image();
                productImage.ImageUrl = imageLink.ToString();

                //still need to add a button cell
                nameCell.Text = productName.ToString();
                priceCell.Text = productPrice.ToString();
                imageCell.Controls.Add(productImage);

                tRow.Cells.Add(BuybuttonCell);
                tRow.Cells.Add(nameCell);
                tRow.Cells.Add(priceCell);
                tRow.Cells.Add(imageCell);

                TableSearch.Rows.Add(tRow);


            }
            reader.Close();
            conn.Close();
        }
    }
}
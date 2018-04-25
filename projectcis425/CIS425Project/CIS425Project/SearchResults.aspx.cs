using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using MySql.Data;

namespace CIS425Project
{
    public partial class SearchResults : System.Web.UI.Page
    {
        public static class Globals    
        {
            public static string dbConnectionString = "server=cis425.wpcarey.asu.edu;uid=adobrons;pwd=thickTHREE30;database=groupa06;SslMode=none";

            public static MySql.Data.MySqlClient.MySqlConnection conn = new MySql.Data.MySqlClient.MySqlConnection(dbConnectionString);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Page.PreviousPage != null)
            {
                TextBox searchBox = (TextBox)Page.PreviousPage.Master.FindControl("SearchbarTextBox");
                if (searchBox != null)
                {
                    SearchLabel.Text = searchBox.Text;
                }
            }

            Globals.conn.Open();
            
            string query = "SELECT * FROM product WHERE Name LIKE '%"+ SearchLabel.Text + "%'" +
                "OR Description LIKE '%" + SearchLabel.Text + "%'" +
                "OR ID LIKE '%" + SearchLabel.Text + "%';";

            var cmd = new MySql.Data.MySqlClient.MySqlCommand(query, Globals.conn);

            var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                var productName = reader["Name"];
                var productPrice = reader["Price"];
                var imageLink = reader["imageUrl"];
                var productdescrpt = reader["Description"];

                
                //makes a table row and cells 
                TableRow tRow = new TableRow();
                TableCell BuybuttonCell = new TableCell();
                TableCell nameCell = new TableCell();
                TableCell descriptionCell = new TableCell();
                TableCell priceCell = new TableCell();
                TableCell imageCell = new TableCell();

                //created an image control
                //still needs to get styled so it looks the same as other pages
                Image productImage = new Image();
                productImage.ImageUrl = imageLink.ToString();
                productImage.Style.Add("width", "200px");

                //still need to add a button to the button cell
                Button BuyButton = new Button();
                BuyButton.Text = "Add to Cart";
                //need to add an event for each button 
                //BuyButton.Click = new EventHandler()

                BuybuttonCell.Controls.Add(BuyButton);
                nameCell.Text = productName.ToString();
                priceCell.Text = productPrice.ToString();
                imageCell.Controls.Add(productImage);
                descriptionCell.Text = productdescrpt.ToString();

                //added the cells into the row
                tRow.Cells.Add(BuybuttonCell);
                tRow.Cells.Add(nameCell);
                tRow.Cells.Add(descriptionCell);
                tRow.Cells.Add(priceCell);
                tRow.Cells.Add(imageCell);

                //added the row into the table
                TableSearch.Rows.Add(tRow);
            }

            reader.Close();
            Globals.conn.Close();
        }
    }
}
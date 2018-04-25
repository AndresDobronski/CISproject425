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
            //this doesn't work yet
            //still need to figure out how to get the text from the textbox from any page
            //the textbox might be empty when its going to the next page

           
            TextBox searchBox = (TextBox)Page.PreviousPage.Master.FindControl("SearchbarTextBox");
            SearchLabel.Text = searchBox.Text;

            //still gives errors about saying "the connection is open"
            Globals.conn.Open();
            
                
           //might want to make a parameter instead of using the label.
           //makes it easier to search

            
            
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

                //still need to add a button to the button cell
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
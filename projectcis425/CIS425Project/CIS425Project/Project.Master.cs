using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CIS425Project
{
    public partial class Project : System.Web.UI.MasterPage
    {
        public string SearchBox
        {
            get { return SearchbarTextBox.Text; }
            set { SearchbarTextBox.Text = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            Server.Transfer("SearchResults.aspx");

        }
    }
}
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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string searchWord = SearchbarTextBox.Text;

        }
    }
}
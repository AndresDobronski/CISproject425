using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CIS425Project
{
    public partial class Cart : System.Web.UI.Page
    {
        public double productPrice = 0;
        public double applicableTax = .07;
        public double shippingCost = 0;
        public double totalBeforeFees = 0;
        public double totalAfterFees = 0;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public Cart()
        {

        }


        //Method find grand total 
        public double CartTotal()
        {
            //gather total for all products 


            //apply applicable tax to price before tax


            //apply shippingCost fee to total price 


            // display values for each value 
            //price of products ( berofre tax) 
            //taxs: 
            //shipping cost 
            //total price 


            return (0);
        }


    }
}
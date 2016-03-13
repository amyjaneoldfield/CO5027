using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace CO5027
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnEasy_Click(object sender, EventArgs e)
        {
            decimal postingCost = 3.95m;
            decimal productPrice = 13.00m;
            int quantityProducts = int.Parse(dListQuant.SelectedValue);

            decimal subtotal = (quantityProducts * productPrice);
            decimal total = subtotal + postingCost;

            //paypal autehntication
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            //APIConext object
            var apiContext = new APIContext(accessToken);

            var productItem = new Item();
            productItem.name = "Roller Lash";
            productItem.currency = "GBP";
            productItem.price = productPrice.ToString();
            productItem.sku = "PEPCO5027m15"; //stock
            productItem.quantity = quantityProducts.ToString();

            var transactionDetails = new Details();
            transactionDetails.tax = "0";
            transactionDetails.shipping = postingCost.ToString();
            transactionDetails.subtotal = subtotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "GBP";
            transactionAmount.total = total.ToString("0.00");
            transactionAmount.details = transactionDetails;

            var transaction = new Transaction();
            transaction.description = "Order of benefit cosmetics";
            transaction.invoice_number = Guid.NewGuid().ToString(); //need to set as id
            transaction.amount = transactionAmount;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { productItem }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "http://localhost:2506/Default.aspx";
            redirectUrls.return_url = "http://localhost:2506/CompletePurchase.aspx";

            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = payer,
                transactions = new List<Transaction> { transaction },
                redirect_urls = redirectUrls
            });

            Session["paymentId"] = payment.id;

            foreach (var link in payment.links)
            {
                if (link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    Response.Redirect(link.href);
                }
            }


            //implementing completed
       
            var paymentId = Session["paymentId"].ToString();

            if (!String.IsNullOrEmpty(paymentId))
            {
                //create object
                var Payment = new Payment() { id = paymentId };
            }

            //retrive

            var payerId = Request.QueryString["PayerID"].ToString();
            var paymentExecution = new PaymentExecution() { payer_id = payerId };

            //execute
            var executedPayment = payment.Execute(apiContext, paymentExecution);

            //inform user
      
        }
    }
}

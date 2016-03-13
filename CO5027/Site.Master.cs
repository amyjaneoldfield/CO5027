using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

   /*          possible code which could be implemented to send users email from company (couldn't get to work)
   
            SmtpClient smtpClient = new SmtpClient();

           System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("1404159UoC@gmail.com", "website321"); //sender

            MailMessage msg = new MailMessage("1404159UoC@gmail.com", "1404159UoCCheck@gmail.com");

            credentials.UserName = txtOffers.Text;
              //  "1404159UoC@gmail.com";
            credentials.Password = "website321";
            smtpClient.Credentials = credentials; //all information for server (gmail)

            msg.Subject = "Benefit Offers";
            msg.Body = "Welcome to the offical Benefit Cosmetics subscription email, here you will be informed of any promotion offers we get throughout the year." + " Recieved from: " + credentials.UserName;

            smtpClient.EnableSsl = true;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.Send(msg);

            txtOffers.Text = "";
            */
        }
    }
}
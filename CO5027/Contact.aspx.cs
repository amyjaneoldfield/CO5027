using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {

            Page.Validate();
            if (Page.IsValid)
            {
  

                SmtpClient smtpClient = new SmtpClient();

                System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("1404159UoC@gmail.com", "website321"); //sender

                MailMessage msg = new MailMessage("1404159UoC@gmail.com","1404159UoCCheck@gmail.com" );
                
                credentials.UserName = "1404159UoC@gmail.com";
                credentials.Password = "website321";
                smtpClient.Credentials = credentials; //all information for server (gmail)

                msg.Subject = txtSubject.Text;
                msg.Body = txtContactMessage.Text + " Recieved from: " + txtContactName.Text + ", " +  txtContactEmail.Text;


                smtpClient.EnableSsl = true;
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                smtpClient.Send(msg);

                txtSubject.Text = "";
                txtContactEmail.Text = "";
                txtContactMessage.Text = "";
                txtContactName.Text = "";

                LitSuccess.Text = "Email successfully sent!";   
               

            }

        }
    }
}

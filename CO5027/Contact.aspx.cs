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
                DataProcessor processor = new DataProcessor();
                processor.SetUserName(txtContactName.Text);
                processor.SetUserName(txtContactEmail.Text);
                processor.SetUserName(txtSubject.Text);
                processor.SetUserName(txtContactMessage.Text);
                divemail.Visible = false;
                Divemailed.Visible = true;


                SmtpClient smtpClient = new SmtpClient();

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("1404159UoC@gmail.com", "website321"); //sender
            MailMessage msg = new MailMessage("1404159UoC@gmail.com", "amyjaneoldfield@hotmail.com", txtSubject.Text + " From: " + txtContactName.Text, txtContactMessage.Text);
            smtpClient.Credentials = credentials; //all information for server (gmail)
            smtpClient.EnableSsl = true;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.Send(msg);
        
            
            }

    }
}
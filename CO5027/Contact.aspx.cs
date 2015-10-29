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
            SmtpClient smtpClient = new SmtpClient();
            
                System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("1404159UoC@gmail.com", "website321");
            MailMessage msg = new MailMessage("1404159UoC@gmail.com", "amyjaneoldfield@hotmail.com");
            smtpClient.Send(msg);
        }
    }
}
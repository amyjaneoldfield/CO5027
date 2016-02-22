using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAdminAdd_Click(object sender, EventArgs e)
        {
       
           Product entry = new Product();
            entry.ProductName = txtName.Text;
            entry.Description = txtDescription.Text;
            
            entry.Price = float.Parse(txtPrice.Text);
         //   entry.AltTxt = txtAltTxt.Text;

            
         
            db_1404159_WebsiteAssignmentEntities db = new db_1404159_WebsiteAssignmentEntities();
            //db_1404159_WebsiteAssignment db = new db_1404159_WebsiteAssignment();


            db.Products.Add(entry);
db.SaveChanges();


     //      string Id = Request.QueryString["Id"];

     //       string filename = Id + ".jpg";
       //     string saveLocation = Server.MapPath("~/ProductImages/" + filename);

            

            
         //   FileUpload.SaveAs(saveLocation);
            
        }

        
    }
}
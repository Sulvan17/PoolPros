using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIndex_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void btnAbout_Click(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }

        protected void btnContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }

        protected void btnServices_Click(object sender, EventArgs e)
        {
            Response.Redirect("Services.aspx");
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                using (var session = FluentHibernateHelper.UserSession())
                {
                    var tempUser = new User
                    {
                        FirstName = txtFName.Text.Trim(),
                        LastName = txtLName.Text.Trim(),
                        Email = txtEmail.Text.Trim(),
                        PhoneNumber = txtPhoneNumber.Text.Trim(),
                        Address = txtAddress.Text.Trim(),
                        Password =  txtPassword.Text.Trim()

                    };
                    session.Save(tempUser);
                    Response.Redirect("index.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write($"Error: {ex}");
            }
        }
    }
}
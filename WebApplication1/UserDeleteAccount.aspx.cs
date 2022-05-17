using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NHibernate;

namespace WebApplication1
{
    public partial class UserDeleteAccount : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                using (var session = FluentHibernateHelper.UserSession())
                {
                    ITransaction tx = session.BeginTransaction();

                    string email= txtEmail.Text.Trim();
                    var tempLecturer = session.Get<User>(email);
                    session.Delete(tempLecturer);
                    tx.Commit();
                    
                    Response.Redirect("index.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write($"Error: {ex}");
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("User Homepage.aspx");
        }
    }
}
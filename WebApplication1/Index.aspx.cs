using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NHibernate;

namespace WebApplication1
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAbout_Click(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }

        protected void btnIndex_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void btnContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }

        protected void btnServices_Click(object sender, EventArgs e)
        {
            Response.Redirect("Services.aspx");
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            HttpCookie user = new HttpCookie("user");
            string name,email;

            try
            {
                using (var session = FluentHibernateHelper.UserSession())
                {
                    ITransaction tx = session.BeginTransaction();


                    string searchWord = txtEmail.Text.Trim();
                    var users = session.CreateCriteria<User>().List<User>();
                    string userId = "";

                    if (searchWord != null && searchWord != "")
                    {
                        foreach (var tempuser in users)
                        {
                            bool isFound = false;
                            if (searchWord == tempuser.Email) { isFound = true; }

                            if (isFound == true)
                            {
                                Response.Cookies["Name"].Value = tempuser.FirstName.ToString();
                                Response.Cookies["Email"].Value = tempuser.Email.ToString();
                                userId += $"{tempuser.UserId}";
                                Response.Cookies["userID"].Value = userId;
                            }
                        }

                    }

                    //if (searchWord != null && searchWord != "" && searchWord == "PoolPro" && password == "$amsoN21")
                    //{
                    //    Response.Redirect("");
                    //}


                    tx.Commit();
                }
            }
            catch (Exception ex)
            {
                Response.Write($"Error: {ex}");
            }
            Response.Redirect("User Homepage.aspx");
        }
    }
}
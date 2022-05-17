using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NHibernate;

namespace WebApplication1
{
    public partial class User_Homepage : System.Web.UI.Page
    {
        string email;
        string userID;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            HttpCookie reqCookies = Request.Cookies["user"];
            if (reqCookies != null)
            {
                string name_cookie = Request.Cookies["Name"].Value;
                lblName.Text = name_cookie;
                email = reqCookies["Email"];
                userID = reqCookies["userID"];
            }
        }

        protected void btnIndex_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Cookies["user"].Expires = DateTime.Now.AddDays(-3);
            Response.Redirect("index.aspx");
        }

        protected void btnDeleteAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserDeleteAccount.aspx");
        }

        protected void btnContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }

        protected void btnServices_Click(object sender, EventArgs e)
        {
            Response.Redirect("Services.aspx");
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                using (var session = FluentHibernateHelper.AppointmentSession())
                {
                    var tempAppointment = new Appointment
                    {
                        Date = txtDate.Text.Trim(),
                        Details = txtDetails.Text.Trim(),
                        Email = email,
                        User_Id = userID

                    };
                    session.Save(tempAppointment);
                }
            }
            catch (Exception ex)
            {
                Response.Write($"Error: {ex}");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                using (var session = FluentHibernateHelper.AppointmentSession())
                {
                    ITransaction tx = session.BeginTransaction();

                    int appointmentID = Int32.Parse(txtAppointmentID.Text.Trim());
                    var tempAppointment = session.Get<Appointment>(appointmentID);
                    session.Delete(tempAppointment);
                    tx.Commit();
                }
            }
            catch (Exception ex)
            {
                Response.Write($"Error: {ex}");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                using (var session = FluentHibernateHelper.AppointmentSession())
                {
                    ITransaction tx = session.BeginTransaction();

                    int AppointmentId = Int32.Parse(txtAppointmentID.Text.Trim());
                    var tempAppointment = session.Get<Appointment>(AppointmentId);

                    string details = txtDetails.Text.Trim();
                    string date = txtDate.Text.Trim();
                    string Email = email;
                    string userid = userID;

                    if (details != null && details != "") { tempAppointment.Details = details; }
                    if (date != null && date != "") { tempAppointment.Date = date; }
                    if (Email != null && Email != "") { tempAppointment.Email = Email; }
                    if (userid != null && userid != "") { tempAppointment.User_Id = userid; }

                    session.Update(tempAppointment);
                    tx.Commit();
                }
            }
            catch (Exception ex)
            {
                Response.Write($"Error: {ex}");
            }
        }
    }
}
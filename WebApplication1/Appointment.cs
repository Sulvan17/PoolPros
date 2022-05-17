using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class Appointment
    {
        public virtual int Appointment_Id { get; set; }
        public virtual string Date { get; set; }
        public virtual string Details { get; set; }
        public virtual string Email { get; set; }
        public virtual string User_Id { get; set; }
    }
}
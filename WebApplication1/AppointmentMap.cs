using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FluentNHibernate.Mapping;

namespace WebApplication1
{
    public class AppointmentMap: ClassMap<Appointment>
    {
        public AppointmentMap()
        {
            Id(x => x.Appointment_Id);
            Map(x => x.Date);
            Map(x => x.Details);
            Map(x => x.Email);
            Map(x => x.User_Id);
            Table("Tbl_Lecturers");
        }
    }
}
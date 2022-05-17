using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using FluentNHibernate.Mapping;
using NHibernate;
using NHibernate.Tool.hbm2ddl;

namespace WebApplication1
{
    public class FluentHibernateHelper
    {
        //public static ISession AdminSession()
        //{
        //    string connectionString = "Data Source=poolpros.database.windows.net;Initial Catalog=PoolPros;User ID=PoolPro;Password=***********";

        //    ISessionFactory sessionFactory = Fluently.Configure()
        //        .Database(MsSqlConfiguration.MsSql2012.ConnectionString(connectionString).ShowSql())
        //        .Mappings(m => m.FluentMappings.AddFromAssemblyOf<Module>())
        //        .ExposeConfiguration(cfg => new SchemaExport(cfg).Create(false, false))
        //        .BuildSessionFactory();
        //    return sessionFactory.OpenSession();
        //}
        public static ISession UserSession()
        {
            string connectionString = "Data Source=poolpros.database.windows.net;Initial Catalog=PoolPros;User ID=PoolPro;Password=***********";

            ISessionFactory sessionFactory = Fluently.Configure()
                .Database(MsSqlConfiguration.MsSql2012.ConnectionString(connectionString).ShowSql())
                .Mappings(m => m.FluentMappings.AddFromAssemblyOf<User>())
                .ExposeConfiguration(cfg => new SchemaExport(cfg).Create(false, false))
                .BuildSessionFactory();
            return sessionFactory.OpenSession();
        }
        public static ISession AppointmentSession()
        {
            string connectionString = "Data Source=poolpros.database.windows.net;Initial Catalog=PoolPros;User ID=PoolPro;Password=***********";

            ISessionFactory sessionFactory = Fluently.Configure()
                .Database(MsSqlConfiguration.MsSql2012.ConnectionString(connectionString).ShowSql())
                .Mappings(m => m.FluentMappings.AddFromAssemblyOf<Appointment>())
                .ExposeConfiguration(cfg => new SchemaExport(cfg).Create(false, false))
                .BuildSessionFactory();
            return sessionFactory.OpenSession();
        }
    }
}

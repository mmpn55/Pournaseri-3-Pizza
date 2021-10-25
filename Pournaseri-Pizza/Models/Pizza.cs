using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Pournaseri_Pizza.Models
{
    public class Pizza
    {
        public int ID { get; set; }
        public string PName { get; set; }
        public int PCount { get; set; }
        public string PType { get; set; }
        public string PDesc { get; set; }
        public string CName { get; set; }
        public string CAdres { get; set; }
        public int PPice { get; set; }

    }

    public class MyContext : DbContext
    {

        public MyContext() : base("Server=.;Database=Pizza;Trusted_Connection=True;")

        {

        }

        public DbSet<Pizza> Pizzas { get; set; }
    }
}

using ChuyenDeASPNET.Context;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ChuyenDeASPNET.Models
{
    public class UserModel
    {
     
     public int UserID { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
    }

    public class MyDbContext : DbContext
    {
        public DbSet<User> Users { get; set; }
    }
}
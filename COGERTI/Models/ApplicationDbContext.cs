using System.Data.Entity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace COGERTI.Models
{
    public class ApplicationDbContext : DbContext
    {
        public DbSet<Notebook> Notebooks { get; set; }
        public DbSet<CentroCusto> CentroCustos { get; set; }
        public DbSet<Funcionario> Funcionarios { get; set; }
        public DbSet<LocalSite> LocalSites { get; set; }
        public DbSet<OwnerDevice> OwnerDevices { get; set; }
        public DbSet<StatusCentroCusto> StatusCentroCustos { get; set; }
        public DbSet<StatusDevice> StatusDevices { get; set; }
        public DbSet<StatusFuncionario> StatusFuncionarios { get; set; }

        public ApplicationDbContext()
            : base("DefaultConnection")
        {
        }

        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }
    }
}
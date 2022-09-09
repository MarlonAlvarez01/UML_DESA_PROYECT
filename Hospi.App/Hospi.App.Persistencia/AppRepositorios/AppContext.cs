using Microsoft.EntityFrameworkCore;
namespace Hospi.App.Persistencia
{

    public class AppContext : DbContext 
    {
        public DbSet<Persona> Personas {get;set;}
    protected override void OnConfiguring (DbContextOptionsBuilder DbContextOptionsBuilder)
    {
        if (!OptionsBuilder.IsConfigured)
        {
         OptionsBuilder
            .UseSqlServer("DataSource = (localdb)\\MSSQLLocalDB; Initial Catalog =SamuraiTestData");
        }
    }
       

    }
}
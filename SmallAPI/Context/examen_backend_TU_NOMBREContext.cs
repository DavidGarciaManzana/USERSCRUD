using examen_backend_DAVID_GARCIA.Models;
using Microsoft.EntityFrameworkCore;


namespace PointOfSaexamen_backend_TU_NOMBRE.Context
{
    public class examen_backend_TU_NOMBREContext : DbContext
    {
        public DbSet<UserModel> UserModels { get; set; }

        public examen_backend_TU_NOMBREContext(DbContextOptions<examen_backend_TU_NOMBREContext> options) : base(options) { }
        protected override void OnModelCreating(ModelBuilder modelBuilderParameter)
        {
            modelBuilderParameter.Entity<UserModel>(userModelParameter =>
            {
                userModelParameter.ToTable("Users");
                userModelParameter.HasKey(x => x.Id);

                userModelParameter.Property(x => x.Name).IsRequired().HasMaxLength(100);
                userModelParameter.Property(x => x.BirthDate).IsRequired();
                userModelParameter.Property(x => x.Email).HasMaxLength(100);
                userModelParameter.Property(x => x.Password).HasMaxLength(100);
            });
            

        }
    }
}


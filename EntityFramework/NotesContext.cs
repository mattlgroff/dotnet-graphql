using dotnet_graphql.Notes;
using Microsoft.EntityFrameworkCore;

namespace dotnet_graphql.EntityFramework
{
    public class NotesContext : DbContext
    {
        public DbSet<Note> Notes { get; set; }

        public NotesContext(DbContextOptions options) : base(options)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace SkyfriProject2.Models;

public partial class Task1Context : DbContext
{
    public Task1Context()
    {
    }

    public Task1Context(DbContextOptions<Task1Context> options)
        : base(options)
    {
    }

    public virtual DbSet<Portfolio> Portfolios { get; set; }

    public virtual DbSet<Tenant> Tenants { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {

    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Portfolio>(entity =>
        {
            entity.Property(e => e.PortfolioName)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.Tenant).WithMany(p => p.Portfolios)
                .HasForeignKey(d => d.TenantId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("TenantId_FK");
        });

        modelBuilder.Entity<Tenant>(entity =>
        {
            entity.Property(e => e.TenantName)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}

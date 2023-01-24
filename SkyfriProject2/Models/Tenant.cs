using System;
using System.Collections.Generic;

namespace SkyfriProject2.Models;

public partial class Tenant
{
    public int TenantId { get; set; }

    public string? TenantName { get; set; }

    public virtual ICollection<Portfolio> Portfolios { get; } = new List<Portfolio>();
}

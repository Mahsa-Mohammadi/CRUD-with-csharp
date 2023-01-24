using System;
using System.Collections.Generic;

namespace SkyfriProject2.Models;

public partial class Portfolio
{
    public int PortfolioId { get; set; }

    public int TenantId { get; set; }

    public string? PortfolioName { get; set; }

    public virtual Tenant Tenant { get; set; } = null!;
}

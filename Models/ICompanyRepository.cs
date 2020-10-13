using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApi.Models
{
    public interface ICompanyRepository
    {
        IQueryable<Company> Companies { get; }
        IQueryable<Employee> Employees { get; }
    }
}

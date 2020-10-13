using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApi.Models
{
    public class EFCompanyRepository : ICompanyRepository
    {
        private CompanyContext context;

        public EFCompanyRepository(CompanyContext cxt)
        {
            this.context = cxt;
        }

        public IQueryable<Company> Companies => context.Companyes;

        public IQueryable<Employee> Employees => context.Employees;
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApi.Models
{
    public class Company
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public int EstablishmentYear { get; set; }
        public virtual ICollection<Employee> Employees { get; set; }
    }
}

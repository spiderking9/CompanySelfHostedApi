using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApi.Models
{
    public class Search
    {
        public string Keyword { get; set; }
        public DateTime? EmployeeDateOfBirthTo { get; set; }
        public DateTime? EmployeeDateOfBirthFrom { get; set; }
        public List<string> EmployeeJobTitles { get; set; }
    }
}

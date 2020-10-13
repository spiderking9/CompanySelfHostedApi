using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace WebApi.Models
{
    public enum JobTitle
    {
        Administrator, Developer, Architect, Manager
    }
    public class Employee
    {
        public Guid Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public DateTime DateOfBirth { get; set; }
        [Column("JobTitle")]
        public String JobTitleString
        {
            get { return JobTitle.ToString(); }
            private set { JobTitle = value.ParseEnum<JobTitle>(); }
        }
        [NotMapped]
        public JobTitle JobTitle { get; set; }
    }
}

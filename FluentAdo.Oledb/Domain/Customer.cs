using System;

namespace FluentAdo.Oledb.Domain
{
    public class Customer
    {
        public Guid ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public DateTime Birthday { get; set; }
        public decimal? Height { get; set; }
        public int? Weight { get; set; }
    }
}
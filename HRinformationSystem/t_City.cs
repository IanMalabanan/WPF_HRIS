//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HRinformationSystem
{
    using System;
    using System.Collections.Generic;
    
    public partial class t_City
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public t_City()
        {
            this.t_EmpAddress = new HashSet<t_EmpAddress>();
        }
    
        public int CountryID { get; set; }
        public int ProvID { get; set; }
        public int CityID { get; set; }
        public string CityName { get; set; }
    
        public virtual t_Province t_Province { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<t_EmpAddress> t_EmpAddress { get; set; }
    }
}

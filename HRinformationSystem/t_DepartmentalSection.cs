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
    
    public partial class t_DepartmentalSection
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public t_DepartmentalSection()
        {
            this.t_EmpMaster = new HashSet<t_EmpMaster>();
            this.t_EmpReClassification = new HashSet<t_EmpReClassification>();
            this.t_EmpReClassification1 = new HashSet<t_EmpReClassification>();
        }
    
        public string DeptCode { get; set; }
        public string SectCode { get; set; }
        public string SectName { get; set; }
    
        public virtual t_Department t_Department { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<t_EmpMaster> t_EmpMaster { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<t_EmpReClassification> t_EmpReClassification { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<t_EmpReClassification> t_EmpReClassification1 { get; set; }
    }
}
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
    
    public partial class t_EmpAddress
    {
        public string EmpID { get; set; }
        public string PresStreet { get; set; }
        public Nullable<int> PresCityID { get; set; }
        public Nullable<int> PresProvinceID { get; set; }
        public Nullable<int> PresCountryID { get; set; }
        public string PermStreet { get; set; }
        public Nullable<int> PermCityID { get; set; }
        public Nullable<int> PermProvinceID { get; set; }
        public Nullable<int> PermCountryID { get; set; }
        public Nullable<System.DateTime> LastUpdate { get; set; }
    
        public virtual t_City t_City { get; set; }
        public virtual t_EmpMaster t_EmpMaster { get; set; }
    }
}

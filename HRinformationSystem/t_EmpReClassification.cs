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
    
    public partial class t_EmpReClassification
    {
        public string EmpID { get; set; }
        public string ReClassificationMode { get; set; }
        public string FromPosition { get; set; }
        public string ToPosition { get; set; }
        public Nullable<System.DateTime> EffectiveDatePosition { get; set; }
        public string FromGradeLevel { get; set; }
        public string ToGradeLevel { get; set; }
        public Nullable<System.DateTime> EffectiveDateGradeLevel { get; set; }
        public string FromEmploymentStatus { get; set; }
        public string ToEmploymentStatus { get; set; }
        public Nullable<System.DateTime> EffectiveDateEmploymentStatus { get; set; }
        public string FromDepartment { get; set; }
        public string ToDepartment { get; set; }
        public Nullable<System.DateTime> EffectiveDateDepartment { get; set; }
        public string FromSection { get; set; }
        public string ToSection { get; set; }
        public Nullable<System.DateTime> EffectiveDateSection { get; set; }
        public decimal FromBasicRate { get; set; }
        public decimal ToBasicRate { get; set; }
        public Nullable<System.DateTime> EffectiveDateBasicRate { get; set; }
        public string FromPayMode { get; set; }
        public string ToPayMode { get; set; }
        public Nullable<System.DateTime> EffectiveDatePayMode { get; set; }
        public decimal FromMealAllowance { get; set; }
        public decimal ToMealAllowance { get; set; }
        public Nullable<System.DateTime> EffectiveDateMealAllowance { get; set; }
        public decimal FromRelativityPay { get; set; }
        public decimal ToRelativityPay { get; set; }
        public Nullable<System.DateTime> EffectiveDateRelativityPay { get; set; }
        public decimal FromOtherAllowance { get; set; }
        public decimal ToOtherAllowance { get; set; }
        public Nullable<System.DateTime> EffectiveDateOtherAllowance { get; set; }
        public decimal FromAccidentInsurance { get; set; }
        public decimal ToAccidentInsurance { get; set; }
        public Nullable<System.DateTime> EffectiveDateAccidentInsurance { get; set; }
        public Nullable<decimal> FromResponsibilityPay { get; set; }
        public Nullable<decimal> ToResponsibilityPay { get; set; }
        public Nullable<System.DateTime> EffectiveDateResponsibilityPay { get; set; }
        public Nullable<decimal> FromTrainersAllowance { get; set; }
        public Nullable<decimal> ToTrainersAllowance { get; set; }
        public Nullable<System.DateTime> EffectiveDateTrainersAllowance { get; set; }
        public string FromOtherAllowanceDesc { get; set; }
        public string ToOtherAllowanceDesc { get; set; }
        public Nullable<decimal> FromCTPA { get; set; }
        public Nullable<decimal> ToCTPA { get; set; }
        public Nullable<System.DateTime> EffectiveDateCTPA { get; set; }
        public string ApprovedBy { get; set; }
        public string NotedBy { get; set; }
        public string PreparedBy { get; set; }
        public string ReceivedBy { get; set; }
        public string ModifiedBy { get; set; }
        public System.DateTime LastUpdate { get; set; }
    
        public virtual t_DepartmentalSection t_DepartmentalSection { get; set; }
        public virtual t_DepartmentalSection t_DepartmentalSection1 { get; set; }
        public virtual t_EmpMaster t_EmpMaster { get; set; }
        public virtual t_PayMode t_PayMode { get; set; }
        public virtual t_PayMode t_PayMode1 { get; set; }
        public virtual t_Position t_Position { get; set; }
        public virtual t_Position t_Position1 { get; set; }
    }
}

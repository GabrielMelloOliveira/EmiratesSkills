//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EmiratesSkills_S1.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Timesheet
    {
        public int TimesheetID { get; set; }
        public int StaffID { get; set; }
        public System.DateTime StartDateTime { get; set; }
        public System.DateTime EndDateTime { get; set; }
        public decimal PayAmount { get; set; }
    
        public virtual Staff Staff { get; set; }
    }
}

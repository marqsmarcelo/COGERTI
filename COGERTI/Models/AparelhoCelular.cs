//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace COGERTI.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class AparelhoCelular : Equipamento
    {
        public string IMEI1 { get; set; }
        public string IMEI2 { get; set; }
    
        public virtual TipoAparelhoCelular TipoAparelhoCelular { get; set; }
    }
}
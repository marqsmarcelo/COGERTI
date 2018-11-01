using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Linq;
using System.Web;

namespace COGERTI.Models
{
    public class Notebook
    {
        [Key]
        [Display(Name = "Serial")]
        public string SerialNo { get; set; }
        [Display(Name = "Patrimônio")]
        public double? Patrimonio { get; set; }
        public string Marca { get; set; }
        public string Modelo { get; set; }
        [Display(Name = "Nota Fiscal")]
        public double? NotaFiscal { get; set; }
        [Display(Name = "Data Início da Garantia")]
        public DateTime? Garantia_Inicio { get; set; }
        [Display(Name = "Data Término da Garantia")]
        public DateTime? Garantia_Termino { get; set; }

        public StatusDevice StatusDevice { get; set; }
        [Display(Name = "Status")]
        public byte StatusDeviceId { get; set; }

        public OwnerDevice OwnerDevice { get; set; }
        [Display(Name = "Owner")]
        public byte OwnerDeviceId { get; set; }

        public LocalSite LocalSite { get; set; }
        [Display(Name = "Planta")]
        public byte LocalSiteId { get; set; }

        public Funcionario Funcionario { get; set; }
        [Display(Name = "ID do Funcionário")]
        public byte FuncionarioId { get; set; }
    }
}
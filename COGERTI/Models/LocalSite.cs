using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace COGERTI.Models
{
    public class LocalSite
    {
        public int Id { get; set; }
        [Required]
        public string Nome { get; set; }
        [Required]
        [StringLength(3)]
        public string Sigla { get; set; }
        [Required]
        [StringLength(2)]
        public string UF { get; set; }
    }
}
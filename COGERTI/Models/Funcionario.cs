using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace COGERTI.Models
{
    public class Funcionario
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string UsuarioRede { get; set; }

        public CentroCusto CentroCusto { get; set; }
        public byte CentroCustoId { get; set; }

        public LocalSite LocalSite { get; set; }
        public byte LocalSiteId { get; set; }

        public StatusFuncionario StatusFuncionario { get; set; }
        public byte StatusFuncionarioId { get; set; }

    }
}
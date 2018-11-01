using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace COGERTI.Models
{
    public class CentroCusto
    {
        public int Id { get; set; }
        public double Codigo { get; set; }
        public string Nome { get; set; }
        public string Apelido { get; set; }

        /*public Funcionario Funcionario { get; set; }
        public byte FuncionarioId { get; set; }*/

        public StatusCentroCusto StatusCentroCusto { get; set; }
        public byte StatusCentroCustoId { get; set; }
    }
}
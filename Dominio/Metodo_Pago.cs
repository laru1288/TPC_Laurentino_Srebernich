using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Metodo_Pago {
        public int ID { get; set; }
        public string Metodo { get; set; }

        public Metodo_Pago(int id, string metodo)
        {
            ID = id;
            Metodo = metodo;
        }
    }
}

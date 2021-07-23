using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
   public class Ventas  {
        public int ID { get; set; }

        public DateTime Fecha;
        public int ID_cliente { get; set; }
        public int ID_Estado  { get; set; }
        public int ID_MetodoPago { get; set; }
        public int ID_TipoEnvio { get; set; }
    }
}

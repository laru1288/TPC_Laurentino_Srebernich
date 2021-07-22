using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
   public class Ventas  {
        public int ID { get; set; }

        public Fecha fecha;
        public int ID_cliente { get; set; }
        public Estado_venta Estado { get; set; }
        public Metodo_Pago metodopago { get; set; }
        public Tipo_Envio iipoenvio { get; set; }
    }
}

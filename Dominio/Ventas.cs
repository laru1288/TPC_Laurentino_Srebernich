using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
   public class Ventas  {
        public int ID { get; set; }
        public DateTime Fecha { get; set; }
        public int ID_cliente { get; set; }
        public int ID_Estado  { get; set; }
        public int ID_MetodoPago { get; set; }
        public int ID_TipoEnvio { get; set; }

        public Ventas() { }
        public Ventas(int id, DateTime fecha, int id_cliente, int id_estado, int id_metodopago, int id_tipoenvio)
        {
            ID = id;
            Fecha = fecha;
            ID_cliente = id_cliente;
            ID_Estado = id_estado;
            ID_MetodoPago = id_metodopago;
            ID_TipoEnvio = id_tipoenvio;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Estado_venta {
        public int ID { get; set; }
        public string Estado { get; set; }

       public Estado_venta(int id, string estado)
        {
            ID = id;
            Estado = estado;
        }
    }
}

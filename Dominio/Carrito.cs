using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Carrito
    {
        public Producto Producto { get; set; }
        public int Cant { get; set; }

        public decimal subtotal { get; set; }
    }
}

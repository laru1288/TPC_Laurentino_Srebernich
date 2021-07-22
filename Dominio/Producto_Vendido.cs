using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Producto_Vendido {
        public int ID { get; set; }
        public int ID_Venta { get; set; }
        public int ID_codigo_producto { get; set; }
        public int ID_Color { get; set; }
        public int Cantidad { get; set; }
        public int ID_talle { get; set; }
        public decimal Precio_vendido { get; set; }

        public Producto_Vendido(int id, int idventa, int codigoproducto, int color, int cantidad, int talle, decimal precio)
        {
            ID = id;
            ID_Venta = idventa;
            ID_codigo_producto = codigoproducto;
            ID_Color = color;
            Cantidad = cantidad;
            ID_talle = talle;
            Precio_vendido = precio;
        }
    }
}

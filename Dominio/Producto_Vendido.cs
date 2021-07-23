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
        public String Color { get; set; }
        public int Cantidad { get; set; }
        public String Talle { get; set; }
        public decimal Precio_vendido { get; set; }

        public Producto_Vendido() { }
        public Producto_Vendido(int id, int idventa, int codigoproducto, string color, int cantidad, string talle, decimal precio)
        {
            ID = id;
            ID_Venta = idventa;
            ID_codigo_producto = codigoproducto;
            Color = color;
            Cantidad = cantidad;
            Talle = talle;
            Precio_vendido = precio;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    class Producto  {
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public string Imagen_principal { get; set; }
        public string Imagen_2 { get; set; }
        public string Imagen_3 { get; set; }
        public int Stock { get; set; }
        public decimal Precio { get; set; }
        public decimal Precio_prom { get; set; }
        public int Ancho { get; set; }
        public int Largo { get; set; }
        public bool Estrella { get; set; }
        public bool Nuevo { get; set; }
        public bool Garage { get; set; }
        public Marca Marcas { get; set; }
        public Talle Talle { get; set; }
        public Color Color { get; set; }
        public Color Color_2 { get; set; }
        public Color Color_3 { get; set; }
        public Sexo Sexo { get; set; }
        public Categoria Categorias { get; set; }       
        public int ID { get; set; }
        public Producto() {

        }
    }
}

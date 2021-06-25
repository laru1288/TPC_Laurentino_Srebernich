using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
   public class Color{
        public int ID { get; set; }

        public string Nombre { get; set; }

        public Color(string nombre)
        {
            Nombre = nombre;
        }

        public Color(int id, string nombre)
        {
            ID = id;
            Nombre = nombre;
        }

        public Color() { }
        public override string ToString()
        {
            return Nombre;
        }
    }
}

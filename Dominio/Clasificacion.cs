using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    class Clasificacion {
        public int ID { get; set; }

        public string Nombre { get; set; }

        public Clasificacion(string nombre)
        {
            Nombre = nombre;
        }

        public Clasificacion(int id, string nombre)
        {
            ID = id;
            Nombre = nombre;
        }

        public Clasificacion() { }
        public override string ToString()
        {
            return Nombre;
        }
    }
}

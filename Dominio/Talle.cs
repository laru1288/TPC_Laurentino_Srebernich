using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    class Talle  {
        public int ID { get; set; }

        public string Nombre { get; set; }

        public Talle(string nombre)
        {
            Nombre = nombre;
        }

        public Talle(int id, string nombre)
        {
            ID = id;
            Nombre = nombre;
        }

        public Talle() { }
        public override string ToString()
        {
            return Nombre;
        }
    }
}

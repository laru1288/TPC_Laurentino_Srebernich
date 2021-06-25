using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
   public class Sexo  {
        public int ID { get; set; }

        public string Nombre { get; set; }

        public Sexo(string nombre)
        {
            Nombre = nombre;
        }

        public Sexo(int id, string nombre)
        {
            ID = id;
            Nombre = nombre;
        }

        public Sexo() { }
        public override string ToString()
        {
            return Nombre;
        }
    }
}

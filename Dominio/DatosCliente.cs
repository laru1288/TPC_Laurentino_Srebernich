using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
   public class DatosCliente {
        public int ID { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int DNI { get; set; }
        public int Telefono { get; set; }
        public string Direccion { get; set; }
        public int Numero { get; set; }
        public int Piso { get; set; }
        public string Entrecalles { get; set; }
        public string Provincia { get; set; }
        public string Localidad { get; set; }
        public int Cp { get; set; }
        public string Observaciones { get; set; }

        DatosCliente(int id, string name, string apelli, int dni, int tel, string dire, int num, int piso, string entrecalles, 
            string prob, string localidad, int cp, string obsv )
        {
            ID = id;
            Nombre = name;
            Apellido = apelli;
            DNI = dni;
            Telefono = tel;
            Direccion = dire;
            Numero = num;
            Piso = piso;
            Entrecalles = entrecalles;
            Provincia = prob;
            Localidad = localidad;
            Cp = cp;
            Observaciones = obsv;
        }

    }
}

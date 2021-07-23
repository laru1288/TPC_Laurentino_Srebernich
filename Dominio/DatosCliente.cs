using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
   public class DatosCliente {
        public int ID { get; set; }
        public string Mail { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int DNI { get; set; }
        public int Telefono { get; set; }
        public string Direccion { get; set; }
        public int Numero { get; set; }
        public int Cp { get; set; }
        public int Piso { get; set; }
        public string Entrecalles { get; set; }
        public string Provincia { get; set; }
        public string Localidad { get; set; }
        public string Observaciones { get; set; }

        public DatosCliente() { }
       public DatosCliente(int id, string mail, string name, string apelli, int dni, int tel, string dire, int num, int cp, int piso, string entrecalles, string prob, string localidad, string obsv )
        {
            ID = id;
            Mail = mail;
            Nombre = name;
            Apellido = apelli;
            DNI = dni;
            Telefono = tel;
            Direccion = dire;
            Numero = num;
            Cp = cp;
            Piso = piso;
            Entrecalles = entrecalles;
            Provincia = prob;
            Localidad = localidad;
            Observaciones = obsv;
        }
       
    }
}

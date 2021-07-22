using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Tipo_Envio
    {
        public int ID { get; set; }
        public string Envio { get; set; }

        public Tipo_Envio(string envio)
        {
            Envio = envio;
        }
        public Tipo_Envio(int id, string envio)
        {
            ID = id;
            Envio = envio;
        }
    }

}

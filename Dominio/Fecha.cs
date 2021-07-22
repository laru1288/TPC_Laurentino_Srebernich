using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Fecha {
        int dia;
        int mes;
        int anio;

        Fecha() { }

        Fecha (int d, int m , int a)
        {
            dia = d;
            mes = m;
            anio = a;
        }

        int getDia() { return dia; }
        int getMes() { return mes; }
        int getAnio() { return anio; }

    }

    
}

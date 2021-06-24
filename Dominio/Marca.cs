﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    class Marca {
        public int ID { get; set; }

        public string Nombre { get; set; }

        public Marca(string nombre)
        {
            Nombre = nombre;
        }

        public Marca(int id, string nombre)
        {
            ID = id;
            Nombre = nombre;
        }

        public Marca() { }
        public override string ToString()
        {
            return Nombre;
        }
    }
}

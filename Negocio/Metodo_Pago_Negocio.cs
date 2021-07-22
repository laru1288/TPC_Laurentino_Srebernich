using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class Metodo_Pago_Negocio {
        public List<Metodo_Pago> listar()
        {

            List<Metodo_Pago> lista = new List<Metodo_Pago>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.SetearConsulta(" ");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                    //lista.Add(new Metodo_Pago((int)datos.Lector[0], (string)datos.Lector[1], (int)datos.Lector[2], (string)datos.Lector[3]));
                }
                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }
    }
}

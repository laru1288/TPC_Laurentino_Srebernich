using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class Estado_venta_negocio {
        public List<Estado_venta> listar()
        {

            List<Estado_venta> lista = new List<Estado_venta>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.SetearConsulta("select ID, Estado from Estado");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                    lista.Add(new Estado_venta((int)datos.Lector["ID"], (string)datos.Lector["Estado"]));
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

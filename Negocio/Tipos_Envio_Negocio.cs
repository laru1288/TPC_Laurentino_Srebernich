using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class Tipos_Envio_Negocio {
        public List<Tipo_Envio> listar()
        {

            List<Tipo_Envio> lista = new List<Tipo_Envio>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.SetearConsulta("select ID, Envio from Tipo_Envio");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                    lista.Add(new Tipo_Envio((int)datos.Lector["ID"], (string)datos.Lector["Envio"]));
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class TalleNegocio {
        public List<Talle> listar()
        {

            List<Talle> lista = new List<Talle>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.SetearConsulta("select distinct Id,Nombre from Talle");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                    lista.Add(new Talle((Int16)datos.Lector["Id"], (string)datos.Lector["Nombre"]));
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

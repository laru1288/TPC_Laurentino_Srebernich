using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class SubCategoriaNegocio{
        public List<Clasificacion> listar()
        {

            List<Clasificacion> lista = new List<Clasificacion>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.SetearConsulta("select Id,Nombre from SubCategoria");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                    lista.Add(new Clasificacion((int)datos.Lector["Id"], (string)datos.Lector["Nombre"]));
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

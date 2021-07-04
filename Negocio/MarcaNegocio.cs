using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class MarcaNegocio {
        public List<Marca> listar() {

            List<Marca> lista = new List<Marca>();
            AccesoDatos datos = new AccesoDatos();

            try {
                datos.SetearConsulta("select Id,Nombre from Marca");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                    lista.Add(new Marca((int)datos.Lector["Id"], (string)datos.Lector["Nombre"]));
                }
                return lista;
            }
            catch (Exception ex )
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

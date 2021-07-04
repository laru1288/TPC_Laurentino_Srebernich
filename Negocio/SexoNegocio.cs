using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
   public class SexoNegocio{
        public List<Sexo> listar()
        {

            List<Sexo> lista = new List<Sexo>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.SetearConsulta("select Id,Nombre from Sexo");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                    lista.Add(new Sexo((int)datos.Lector["Id"], (string)datos.Lector["Nombre"]));
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class Fecha_Negocio{
        public List<Fecha> listar()
        {

            List<Fecha> lista = new List<Fecha>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.SetearConsulta(" ");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                   // lista.Add(new Fecha((int)datos.Lector[0], (string)datos.Lector[1], (int)datos.Lector[2], (string)datos.Lector[3]));
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

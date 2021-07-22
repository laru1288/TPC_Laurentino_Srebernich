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
                datos.SetearConsulta("select ID, Metodo from Metodo_Pago");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                    lista.Add(new Metodo_Pago((int)datos.Lector["ID"], (string)datos.Lector["Metodo"]));
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class VentaNegocio
    {

        public List<Ventas> listar()
        {

            List<Ventas> lista = new List<Ventas>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.SetearConsulta("Select ID, Fecha, Id_Cli, Id_Estado, Id_Metodo_Pago, Id_Tipo_Envio from Venta");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                    lista.Add(new Ventas((int)datos.Lector["ID"], (DateTime)datos.Lector["Fecha"], (int)datos.Lector["Id_Cli"], (int)datos.Lector["Id_Estado"], (int)datos.Lector["Id_Metodo_Pago"], (int)datos.Lector["Id_Tipo_Envio"]));
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class Datos_Cliente_Negocio {
        public List<DatosCliente> listar()
        {

            List<DatosCliente> lista = new List<DatosCliente>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.SetearConsulta("Select ID, Mail, Nombre, Apellido, DNI, Telefono, Calle, Numero, CP, Piso, EntreCalle, Provincia, Localidad, Observaciones from Clientes");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                    lista.Add(new DatosCliente((int)datos.Lector["ID"], (string)datos.Lector["Mail"], (string)datos.Lector["Nombre"], (string)datos.Lector["Apellido"], (int)datos.Lector["DNI"], (int)datos.Lector["Telefono"], (string)datos.Lector["Calle"], (int)datos.Lector["Numero"], (int)datos.Lector["CP"], (int)datos.Lector["Piso"], (string)datos.Lector["EntreCalle"], (string)datos.Lector["Provincia"], (string)datos.Lector["Localidad"], (string)datos.Lector["Observaciones"]));
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

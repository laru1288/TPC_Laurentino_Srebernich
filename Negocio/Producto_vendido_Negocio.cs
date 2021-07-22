using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class Producto_vendido_Negocio{
        public List<Producto_Vendido> listar()
        {

            List<Producto_Vendido> lista = new List<Producto_Vendido>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.SetearConsulta("select ID, Id_Venta, Id_Prod, Id_Color, Cant, Id_Talle, Precio from Prod_Venta ");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                    lista.Add(new Producto_Vendido((int)datos.Lector["ID"], (int)datos.Lector["Id_Venta"], (int)datos.Lector["Id_Prod"], (int)datos.Lector["Id_Color"], (int)datos.Lector["Cant"], (int)datos.Lector["Id_Talle"], (int)datos.Lector["Precio"]));
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

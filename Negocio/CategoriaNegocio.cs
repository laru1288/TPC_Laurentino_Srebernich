using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
   public class CategoriaNegocio {
        public List<Categoria> listar()
        {

            List<Categoria> lista = new List<Categoria>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.SetearConsulta(" select cat.Id, cat.Nombre, IDSub,sub.Nombre  from Categoria cat left join SubCategoria sub on sub.ID=cat.IDSub");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                    lista.Add(new Categoria((int)datos.Lector[0], (string)datos.Lector[1], (int)datos.Lector[2], (string)datos.Lector[3]));
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

        public List<Categoria> listar_partedearriba()
        {

            List<Categoria> lista = new List<Categoria>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.SetearConsulta(" select cat.ID, cat.Nombre  from Categoria cat left join SubCategoria sub on sub.ID=cat.IDSub where sub.ID=1");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                    lista.Add(new Categoria((int)datos.Lector[0], (string)datos.Lector[1]));
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

        public List<Categoria> listar_partedeabajo()
        {

            List<Categoria> lista = new List<Categoria>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.SetearConsulta("  select cat.ID, cat.Nombre  from Categoria cat left join SubCategoria sub on sub.ID=cat.IDSub where sub.ID=2");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                    lista.Add(new Categoria((int)datos.Lector[0], (string)datos.Lector[1]));
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

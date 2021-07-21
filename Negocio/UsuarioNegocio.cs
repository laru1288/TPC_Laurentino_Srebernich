using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class UsuarioNegocio
    {
        public bool Loguear(Usuario usuario)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.SetearConsulta("Select ID, TipoUser from Usuarios Where Usuario = @user AND Pass = @pass");
                datos.setear_parametro("@user", usuario.User);
                datos.setear_parametro("@pass", usuario.Pass);

                datos.EjecutarLectura();
                while (datos.Lector.Read())
                {
                    usuario.Id = (int)datos.Lector["Id"];
                    usuario.TipoUsuario = (int)(datos.Lector["TipoUser"]) == 2 ? TipoUsuario.ADMIN : TipoUsuario.NORMAL;
                    return true;                
                }
                return false;
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

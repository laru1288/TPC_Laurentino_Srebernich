using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class Consulta {

        public List<Producto> consulta( ) {
            List<Producto> lista = new List<Producto>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
               


                datos.SetearConsulta(
                    "Select distinct p.Nombre, p.Descripcion, p.Imagen_principal, p.Imagen_2, p.Imagen_3, p.Stock, p.Precio, p.Precio_promo, p.Ancho, p.Largo, p.Estrella, p.New, p.Garage, p.IdMarca, p.IdTalle, p.IdColor1, p.IdColor2, p.IdSexo, p.IdCategoria, p.ID, cat.IDSub from Producto as p left join Marca as m  on p.IdMarca = m.ID left join Talle as t on t.ID = p.IdTalle left join Color as c on c.ID = p.IdColor1 or c.ID = p.IdColor2 or c.ID = p.IdColor3 left join Sexo as s on s.ID = p.IdSexo left join Categoria as cat on cat.ID = p.IdCategoria");
                datos.EjecutarLectura();

                while (datos.Lector.Read()) {
                    Producto aux = new Producto();
                    aux.Categorias = new Categoria();
                    aux.Color = new Color();
                    aux.Color_2 = new Color();
                    aux.Sexo = new Sexo();
                    aux.Marcas = new Marca();
                    aux.Talle = new Talle();

                    aux.Nombre = (string)datos.Lector[0];
                    aux.Descripcion = (string)datos.Lector[1];
                    aux.Imagen_principal = (string)datos.Lector[2];
                    aux.Imagen_2 = (string)datos.Lector[3];
                    aux.Imagen_3 = (string)datos.Lector[4];
                    aux.Stock = (Int32)datos.Lector[5];
                    aux.Precio = (decimal)datos.Lector[6];
                    aux.Precio_prom = (decimal)datos.Lector[7];
                    aux.Ancho = (Int32)datos.Lector[8];
                    aux.Largo = (Int32)datos.Lector[9];
                    aux.Estrella = (bool)datos.Lector[10];
                    aux.Nuevo = (bool)datos.Lector[11];
                    aux.Garage = (bool)datos.Lector[12];
                    aux.Marcas.ID = (Int32)datos.Lector[13];
                    aux.Talle.ID = (Int16)datos.Lector[14];
                    aux.Color.ID = (Int32)datos.Lector[15];
                    aux.Color_2.ID = (Int32)datos.Lector[16];
                    aux.Sexo.ID = (Int32)datos.Lector[17];
                    aux.Categorias.ID = (Int32)datos.Lector[18];
                    aux.ID = (Int32)datos.Lector[19];
                    aux.Categorias.IDSub = (Int32)datos.Lector[20];
                    lista.Add(aux);

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

        public void Agregar(Producto nuevo){
            AccesoDatos datos = new AccesoDatos();
            try {
                string valores = "values ('" + nuevo.Nombre + "' , '"+ nuevo.Descripcion +"' , '"+ nuevo.Marcas.ID + "' , '" + nuevo.Categorias.ID+ "' , '"+ nuevo.Talle.ID +"' , '" + nuevo.Color.ID+"' , '"+ nuevo.Color_2.ID +"', '"+nuevo.Sexo.ID+"', '"+nuevo.Imagen_principal+"' , '"+nuevo.Imagen_2+"' , '"+nuevo.Imagen_3+"' , '"+nuevo.Precio+"', '"+nuevo.Precio_prom+"', '"+nuevo.Stock+"' , '"+nuevo.Ancho+"', '"+nuevo.Largo+"', '"+nuevo.Estrella+"', '"+nuevo.Nuevo+"', '"+nuevo.Garage+"')"  ;
                datos.SetearConsulta("insert into Producto (Nombre, Descripcion, IdMarca, IdCategoria, IdTalle, IdColor1, IdColor2, IdSexo, Imagen_principal,Imagen_2, Imagen_3, Precio, Precio_promo, Stock, Ancho, Largo, Estrella, New, Garage)" + valores);
                datos.EjectutarAccion();
            }
            catch (Exception) {

                throw;
            }
            finally {
                datos.cerrarConexion();
            }
        }

        public void Eliminar (int id)
        {
            AccesoDatos datos = new AccesoDatos();
            try {
                datos.SetearConsulta("delete from Producto where ID = " + id);
                datos.EjecutarLectura();
            }
            catch (Exception) {

                throw;
            }
            finally {
                datos.cerrarConexion();
            }


        }

        public void Modificar (Producto nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.SetearConsulta("update  Producto  set Nombre = '" +nuevo.Nombre+ "' , Descripcion = '" +nuevo.Descripcion+ "', IdMarca = '" +nuevo.Marcas.ID+ "', IdCategoria= '" +nuevo.Categorias.ID+ "', IdTalle= '" +nuevo.Talle.ID+ "', IdColor1= '" + nuevo.Color.ID + "', IdColor2= '" + nuevo.Color_2.ID + "', IdSexo= '" + nuevo.Sexo.ID + "', Imagen_principal= '" + nuevo.Imagen_principal + "',Imagen_2= '" + nuevo.Imagen_2 + "', Imagen_3= '" + nuevo.Imagen_3 + "', Precio= '" + nuevo.Precio + "', Precio_promo= '" + nuevo.Precio_prom + "', Stock= '" + nuevo.Stock + "', Ancho= '" + nuevo.Ancho + "', Largo= '" + nuevo.Largo + "', Estrella= '" + nuevo.Estrella + "', New= '" + nuevo.Nuevo + "', Garage= '" + nuevo.Garage + "' where ID = '" + nuevo.ID+ "' ");
                datos.EjectutarAccion();

            }
            catch (Exception EX )
            {

                throw EX;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }

        public void Modificar_Categoria( Categoria nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.SetearConsulta("update Categoria set Nombre = '"+nuevo.Nombre+"', IDSub= '"+nuevo.IDSub+"' where ID ='"+nuevo.ID+"' ");
                datos.EjectutarAccion();

            }
            catch (Exception EX)
            {

                throw EX;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }

        public void Agregar_Categoria( Categoria nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.SetearConsulta("insert into Categoria (Nombre, IDSub) values ('"+nuevo.Nombre+"' , '"+nuevo.IDSub+"')");
                datos.EjecutarLectura();
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

        public void Agregar_Marca(Marca nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.SetearConsulta("insert into Marca (Nombre) values ('" + nuevo.Nombre + "')");
                datos.EjecutarLectura();
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

        public void Modificar_Marca(Marca nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.SetearConsulta("update Marca set Nombre = '" + nuevo.Nombre + "' where ID ='" + nuevo.ID + "' ");
                datos.EjectutarAccion();

            }
            catch (Exception EX)
            {

                throw EX;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }

        public void Agregar_Color(Color nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.SetearConsulta("insert into Color (Nombre) values ('" + nuevo.Nombre + "')");
                datos.EjecutarLectura();
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

        public void Modificar_Color(Color nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.SetearConsulta("update Color set Nombre = '" + nuevo.Nombre + "' where ID ='" + nuevo.ID + "' ");
                datos.EjectutarAccion();

            }
            catch (Exception EX)
            {

                throw EX;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }

        public void Agregar_Sexo(Sexo nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.SetearConsulta("insert into Sexo (Nombre) values ('" + nuevo.Nombre + "')");
                datos.EjecutarLectura();
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

        public void Modificar_Sexo(Sexo nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.SetearConsulta("update Sexo set Nombre = '" + nuevo.Nombre + "' where ID ='" + nuevo.ID + "' ");
                datos.EjectutarAccion();

            }
            catch (Exception EX)
            {

                throw EX;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }

        public void Agregar_Talle(Talle nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.SetearConsulta("insert into Talle (Nombre) values ('" + nuevo.Nombre + "')");
                datos.EjecutarLectura();
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

        public void Modificar_Talle(Talle nuevo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.SetearConsulta("update Talle set Nombre = '" + nuevo.Nombre + "' where ID ='" + nuevo.ID + "' ");
                datos.EjectutarAccion();

            }
            catch (Exception EX)
            {

                throw EX;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class Consulta {

        public List<Producto> consulta() {
            List<Producto> lista = new List<Producto>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.SetearConsulta(
                    "Select p.Nombre, p.Descripcion, p.Imagen_principal, p.Imagen_2, p.Imagen_3, p.Stock, p.Precio, p.Precio_promo, p.Ancho, p.Largo, p.Estrella, p.New, p.Garage, p.IdMarca, p.IdTalle, p.IdColor1, p.IdColor2, p.IdColor3, p.IdSexo, p.IdCategoria, p.ID from Producto as p left join Marca as m  on p.IdMarca = m.ID left join Talle as t on t.ID = p.IdTalle left join Color as c on c.ID = p.IdColor1 or c.ID = p.IdColor2 or c.ID = p.IdColor3 left join Sexo as s on s.ID = p.IdSexo left join Categoria as cat on cat.ID = p.IdCategoria" );
                datos.EjecutarLectura();

                while (datos.Lector.Read()) {
                    Producto aux = new Producto();
                    aux.Categorias = new Categoria();
                    aux.Color = new Color();
                    aux.Color_2 = new Color();
                    aux.Color_3 = new Color();
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
                    aux.Color_3.ID = (Int32)datos.Lector[17];
                    aux.Sexo.ID = (Int32)datos.Lector[18];
                    aux.Categorias.ID = (Int32)datos.Lector[19];
                    aux.ID = (Int32)datos.Lector[20];

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



    }
}

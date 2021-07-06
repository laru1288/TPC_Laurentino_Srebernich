using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace TPC_Laurentino_Srebernich
{
    public partial class Eliminar : System.Web.UI.Page
    {
        List<Producto> listaproductos = new List<Producto>();
        Producto Aeliminar = new Producto();
        int id;

        protected void Page_Load(object sender, EventArgs e){
            var ids = (Request.QueryString["id"]);
            id = Convert.ToInt32(ids);
            buscar_id(Convert.ToInt32(id));
        }

        protected void buscar_id(int id){
            listaproductos = (List<Producto>)Session["listaproduct"];
            Aeliminar = listaproductos.Find(x => x.ID == id);
            cargar_datos(Aeliminar);
        }

        protected void cargar_datos(Producto Aeliminar){
            textNombre.Text = Aeliminar.Nombre;
            TextAncho.Text = Aeliminar.Ancho.ToString();
            TextDescripcion.Text = Aeliminar.Descripcion;
            Textimagen2.Text = Aeliminar.Imagen_2;
            TextImagen3.Text = Aeliminar.Imagen_3;
            TextImagenprincipal.Text = Aeliminar.Imagen_principal;
            TextLargo.Text = Aeliminar.Largo.ToString();
            TextPrecio.Text = Aeliminar.Precio.ToString("0.00");
            Textpreciopromo.Text = Aeliminar.Precio_prom.ToString("0.00");
            TextStock.Text = Aeliminar.Stock.ToString();                

        }

        protected void B_Eliminar_Click(object sender, EventArgs e) {
            Consulta Eliminar = new Consulta();
            Eliminar.Eliminar(id);
        }
    }
}
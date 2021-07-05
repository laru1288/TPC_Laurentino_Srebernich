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
    public partial class Detalle : System.Web.UI.Page
    {
        //public static List<Cart> shoppingcart = new List<Cart>();
        int id = 0;
        //int cantidad = 1;
        public bool promo = false;

        Producto seleccionado, aux;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Request.QueryString["id"]);
            List<Producto> lista = (List<Producto>)Session["listaproduct"];
            seleccionado = lista.Find(x => x.ID == id);
            //seleccionado = lista.FirstOrDefault(x => x.Articulo.ID == id).Articulo;

            imagen.ImageUrl = seleccionado.Imagen_principal;
            lblnombre.Text = seleccionado.Nombre;
            lblprecio.Text = seleccionado.Precio.ToString("0.00");
            lblprecioold.Text = seleccionado.Precio.ToString("0.00");
            lblprecioprom.Text = seleccionado.Precio_prom.ToString("0.00");
            if (seleccionado.Precio_prom > 0) { promo = true; }
            lblmarca.Text = seleccionado.Marcas.Nombre;
            lbldescrip.Text = seleccionado.Descripcion;

            //cantidad = Convert.ToInt32(txtCantidad.Text);

            aux = seleccionado;
        }
    }
}
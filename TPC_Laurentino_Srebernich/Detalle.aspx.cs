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
        public static List<Dominio.Carrito> shoppingcart = new List<Dominio.Carrito>();
        int id = 0;
        int cantidad = 1;
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

        protected void Agregar_Click(object sender, EventArgs e)
        {
            bool encontro = false;
            var reemplazo = new Dominio.Carrito { };
            
            foreach (Dominio.Carrito item in shoppingcart)
            {
                if (item.Producto.ID == id)
                {
                    encontro = true;
                    reemplazo.Producto = item.Producto;
                    reemplazo.Cant = item.Cant + 1;
                    reemplazo.subtotal = (reemplazo.Cant * item.Producto.Precio);

                }
            }


            if (encontro == false)
            {
                shoppingcart.Add(new Dominio.Carrito { Producto = aux, Cant = cantidad, subtotal = aux.Precio * cantidad });
                Session.Add("listacarrito", shoppingcart);
                Response.Redirect("Carrito.aspx");
            }
            else
            {
                var eindex = shoppingcart.FindIndex(i => i.Producto.ID == reemplazo.Producto.ID);

                shoppingcart[eindex] = reemplazo;
                Response.Redirect("Carrito.aspx");
            }


        }

    }
}
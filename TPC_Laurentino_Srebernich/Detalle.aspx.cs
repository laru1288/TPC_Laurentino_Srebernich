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
        public List<Marca> marca = new List<Marca>();
        public List<Talle> talle = new List<Talle>();

        public Producto seleccionado, aux;
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

            //ver marca
            MarcaNegocio consultamarca = new MarcaNegocio();
            marca = consultamarca.listar();
            lblmarca.Text = marca.Find(x => x.ID == seleccionado.Marcas.ID).Nombre;
            //talle
            TalleNegocio consultatalle = new TalleNegocio();
            talle = consultatalle.listar();
            lbltalle.InnerText = talle.Find(x => x.ID == seleccionado.Talle.ID).Nombre;

            lbldescrip.Text = seleccionado.Descripcion;

            //cantidad = Convert.ToInt32(txtCantidad.Text);

            aux = seleccionado;
        }

        protected void Comprar_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (!Page.IsValid)
            {
                return;
            }
            int cantidatext = Convert.ToInt32(cantidadelegida.Text);
            //preguntar a lau como enviaba la cantidad
            bool encontro = false;
            var reemplazo = new Dominio.Carrito { };

            foreach (Dominio.Carrito item in shoppingcart)
            {
                if (item.Producto.ID == id)
                {
                    encontro = true;
                    reemplazo.Producto = item.Producto;
                    reemplazo.Cant = item.Cant + 1;
                    if (promo)
                    {
                        reemplazo.subtotal = (reemplazo.Cant * item.Producto.Precio_prom);
                    }
                    else
                    {
                        reemplazo.subtotal = (reemplazo.Cant * item.Producto.Precio);
                    }

                }
            }


            if (encontro == false)
            {
                if (promo)
                {
                    shoppingcart.Add(new Dominio.Carrito { Producto = aux, Cant = cantidatext, subtotal = aux.Precio_prom * cantidatext });
                }
                else
                {
                    shoppingcart.Add(new Dominio.Carrito { Producto = aux, Cant = cantidatext, subtotal = aux.Precio * cantidatext });
                }

                Session.Add("listacarrito", shoppingcart);
                Response.Redirect("PreCheckout.aspx");
            }
            else
            {
                var eindex = shoppingcart.FindIndex(i => i.Producto.ID == reemplazo.Producto.ID);

                shoppingcart[eindex] = reemplazo;
                Response.Redirect("PreCheckout.aspx");
            }


        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (!Page.IsValid)
            {
                return;
            }
            int cantidatext = Convert.ToInt32(cantidadelegida.Text);
            //preguntar a lau como enviaba la cantidad
            bool encontro = false;
            var reemplazo = new Dominio.Carrito { };
            
            foreach (Dominio.Carrito item in shoppingcart)
            {
                if (item.Producto.ID == id)
                {
                    encontro = true;
                    reemplazo.Producto = item.Producto;
                    reemplazo.Cant = item.Cant + cantidatext;
                    if (promo)
                    {
                        reemplazo.subtotal = (reemplazo.Cant * item.Producto.Precio_prom);
                    }
                    else
                    {
                        reemplazo.subtotal = (reemplazo.Cant * item.Producto.Precio);
                    }

                }
            }


            if (encontro == false)
            {
                if (promo)
                {
                    shoppingcart.Add(new Dominio.Carrito { Producto = aux, Cant = cantidatext, subtotal = aux.Precio_prom * cantidatext });
                }
                else
                {
                    shoppingcart.Add(new Dominio.Carrito { Producto = aux, Cant = cantidatext, subtotal = aux.Precio * cantidatext });
                }
               
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
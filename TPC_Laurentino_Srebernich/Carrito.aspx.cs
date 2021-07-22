using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPC_Laurentino_Srebernich
{
    public partial class Carrito : System.Web.UI.Page
    {
        public static List<Dominio.Carrito> carrito;
        int cantidad = 1, id = 0;
        int sumacar = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {


                if (carrito == null)
                {

                }
                carrito = (List<Dominio.Carrito>)Session["listacarrito"];

                decimal su = carrito.Sum(x => x.subtotal);
                var aux = su.ToString("0.00");
                lblTotal.Text = aux;

                var pid = (Request.QueryString["id"]);
                var evento = Request.QueryString["evento"];
                id = Convert.ToInt32(pid);

                if (evento == "sumar") modificar(id);
                if (evento == "menos") restar(id);
                if (evento == "eliminar") Eliminar(id);

            }
            catch (Exception)
            {
                 
            }
        }
        protected void txtCantidad_TextChanged(object sender, EventArgs e)
        {
            var cantidades = ((TextBox)sender).Text;
            cantidad = Convert.ToInt32(cantidades);

        }

        protected void Eliminar(int id)
        {

            List<Dominio.Carrito> eliminado = (List<Dominio.Carrito>)Session["listacarrito"];
            Dominio.Carrito elim = eliminado.Find(x => x.Producto.ID == id);
            eliminado.Remove(elim);
            Session.Add("listacarrito", eliminado);

        }

        protected void btnvaciar_carrito(object sender, EventArgs e)
        {
            carrito.Clear();
            sumacar = 0;
            Response.Redirect("Carrito.aspx");
        }

        protected void modificar(int id)
        {
            var reemplazo = new Dominio.Carrito { };
            foreach (Dominio.Carrito item in carrito)
            {
                if (item.Producto.ID == id)
                {
                    reemplazo.Producto = item.Producto;
                    reemplazo.Cant = item.Cant + 1;
                    if (item.Producto.Precio_prom > 0)
                    {
                        reemplazo.subtotal = (reemplazo.Cant * item.Producto.Precio_prom);
                    }
                    else
                    {
                        reemplazo.subtotal = (reemplazo.Cant * item.Producto.Precio);
                    }


                }
            }
            var eindex = carrito.FindIndex(i => i.Producto.ID == reemplazo.Producto.ID);

            carrito[eindex] = reemplazo;
            Response.Redirect("Carrito.aspx");


        }

        protected void restar(int id)
        {
            var reemplazo = new Dominio.Carrito { };
            foreach (Dominio.Carrito item in carrito)
            {
                if (item.Producto.ID == id)
                {
                    reemplazo.Producto = item.Producto;
                    reemplazo.Cant = item.Cant - 1;
                    if (reemplazo.Cant <= 1) reemplazo.Cant = 1;
                    if (item.Producto.Precio_prom > 0)
                    {
                        reemplazo.subtotal = (reemplazo.Cant * item.Producto.Precio_prom);
                    }
                    else
                    {
                        reemplazo.subtotal = (reemplazo.Cant * item.Producto.Precio);
                    }
                    

                }
            }
            var eindex = carrito.FindIndex(i => i.Producto.ID == reemplazo.Producto.ID);

            carrito[eindex] = reemplazo;
            Response.Redirect("Carrito.aspx");


        }

        public void limpiarlista()
        {
            carrito.Clear();
            sumacar = 0;
        }

        protected void Bfinalizarcompra_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }

        public int sumacarrito()
        {
            if (carrito != null)
            {
                foreach (Dominio.Carrito item in carrito)
                {
                    sumacar += item.Cant;
                }
            }
            return sumacar;

        }
    }
}
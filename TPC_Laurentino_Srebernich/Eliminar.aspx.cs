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
        public Producto Aeliminar = new Producto();
        int id;

        protected void Page_Load(object sender, EventArgs e){
            if (!(Session["usuario"] != null && ((Dominio.Usuario)Session["usuario"]).TipoUsuario == Dominio.TipoUsuario.ADMIN))
            {
                Session.Add("error", "No tienes permisos para ingresar a esta pantalla. Necesitas nivel admin.");
                Response.Redirect("Error.aspx", false);
            }

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
            TextDescripcion.Text = Aeliminar.Descripcion;
        }

        protected void B_Eliminar_Click(object sender, EventArgs e) {
            Consulta Eliminar = new Consulta();
            Eliminar.Eliminar(id);
            Response.Redirect("Exito.aspx");
        }
    }
}
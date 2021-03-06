using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace TPC_Laurentino_Srebernich
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public List<Producto> lista = new List<Producto>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["usuario"] != null && ((Dominio.Usuario)Session["usuario"]).TipoUsuario == Dominio.TipoUsuario.ADMIN))
            {
                Session.Add("error", "No tienes permisos para ingresar a esta pantalla. Necesitas nivel admin.");
                Response.Redirect("Error.aspx", false);
            }
            Consulta negocio = new Consulta();
            try
            {
                lista = negocio.consulta();
                Session.Add("listaproduct", lista);
                var evento = Request.QueryString["evento"];
                if(evento== "editar") Response.Redirect("Editar.aspx");
                if (evento == "eliminar") Response.Redirect("Eliminar.aspx");


            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

       
    }
}
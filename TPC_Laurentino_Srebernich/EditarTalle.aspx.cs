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
    public partial class EditarTalle : System.Web.UI.Page
    {
        List<Talle> listatalles = new List<Talle>();
        Talle Aeditar = new Talle();
        TalleNegocio Talles = new TalleNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["usuario"] != null && ((Dominio.Usuario)Session["usuario"]).TipoUsuario == Dominio.TipoUsuario.ADMIN))
            {
                Session.Add("error", "No tienes permisos para ingresar a esta pantalla. Necesitas nivel admin.");
                Response.Redirect("Error.aspx", false);
            }
            var id = (Request.QueryString["id"]);
            buscar_id(Convert.ToInt32(id));
        }

        protected void buscar_id(int id)
        {
            listatalles = Talles.listar();
            Aeditar = listatalles.Find(x => x.ID == id);
            if (!IsPostBack)
            {
                cargar_datos(Aeditar);
            }
        }
        protected void cargar_datos(Talle Aeditar)
        {
            textNombre.Text = Aeditar.Nombre;

        }


        protected void B_modificar_talle_Click(object sender, EventArgs e)
        {
            Consulta Modificar = new Consulta();
            Talle nuevo = new Talle();

            try
            {
                nuevo.Nombre = textNombre.Text;
                nuevo.ID = Aeditar.ID;
                Modificar.Modificar_Talle(nuevo);
                Response.Redirect("Exito2.aspx");
            }
            catch (Exception EX)
            {

                throw EX;
            }


        }
    }
}
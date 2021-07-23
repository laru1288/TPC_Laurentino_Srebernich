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
    public partial class EditarSexo : System.Web.UI.Page
    {
        List<Sexo> listasexo = new List<Sexo>();
        Sexo Aeditar = new Sexo();
        SexoNegocio Sexo = new SexoNegocio();
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
            listasexo = Sexo.listar();
            Aeditar = listasexo.Find(x => x.ID == id);
           /* if (!IsPostBack)
            {
                cargar_datos(Aeditar);
            }*/
        }
        protected void cargar_datos(Sexo Aeditar)
        {
            textNombre.Text = Aeditar.Nombre;

        }


        protected void B_modificar_sexo_Click(object sender, EventArgs e)
        {
            Consulta Modificar = new Consulta();
            Sexo nuevo = new Sexo();

            try
            {
                nuevo.Nombre = textNombre.Text;
                nuevo.ID = Aeditar.ID;
                Modificar.Modificar_Sexo(nuevo);
                Response.Redirect("Exito2.aspx");
            }
            catch (Exception EX)
            {

                throw EX;
            }


        }
    }
}
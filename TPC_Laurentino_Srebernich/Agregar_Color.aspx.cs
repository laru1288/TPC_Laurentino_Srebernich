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
    public partial class Agregar_Color : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void B_agregar_color_Click(object sender, EventArgs e)
        {
            Consulta Agregar = new Consulta();
            Color nuevo = new Color();

            nuevo.Nombre = textNombre.Text;
            Agregar.Agregar_Color(nuevo);
            Response.Redirect("Exito2.aspx");
        }
    }
}
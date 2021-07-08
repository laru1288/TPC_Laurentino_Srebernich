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
    public partial class Agregar_Sexo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void B_agregar_sexo_Click(object sender, EventArgs e)
        {
            Consulta Agregar = new Consulta();
            Sexo nuevo = new Sexo();

            nuevo.Nombre = textNombre.Text;
            Agregar.Agregar_Sexo(nuevo);
            Response.Redirect("Exito2.aspx");
        }
    }
}
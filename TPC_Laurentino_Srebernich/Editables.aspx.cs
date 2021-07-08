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
   
    public partial class Editables : System.Web.UI.Page
    {
        public List<Categoria> lista = new List<Categoria>();
        protected void Page_Load(object sender, EventArgs e)
        {
            CategoriaNegocio consulta = new CategoriaNegocio();
            try
            {
                lista = consulta.listar();
            }
            catch (Exception ex )
            {

                throw ex;
            }
           
        }

        protected void B_Agregar_Categoria_Click(object sender, EventArgs e)
        {
            Response.Redirect("Agregar_Marca.aspx");
        }
    }
}
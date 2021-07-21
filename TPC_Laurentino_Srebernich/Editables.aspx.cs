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
        public List<Categoria> l_categoria = new List<Categoria>();
        public List<Marca> l_marca = new List<Marca>();
        public List<Color> l_color = new List<Color>();
        public List<Sexo> l_sexo = new List<Sexo>();
        public List<Talle> l_talle = new List<Talle>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["usuario"] != null && ((Dominio.Usuario)Session["usuario"]).TipoUsuario == Dominio.TipoUsuario.ADMIN))
            {
                Session.Add("error", "No tienes permisos para ingresar a esta pantalla. Necesitas nivel admin.");
                Response.Redirect("Error.aspx", false);
            }

            CategoriaNegocio consulta_categoria = new CategoriaNegocio();
            try
            {
                l_categoria = consulta_categoria.listar();
            }
            catch (Exception ex )
            {

                throw ex;
            }

            MarcaNegocio consulta_marca = new MarcaNegocio();
            try
            {
                l_marca = consulta_marca.listar();
            }
            catch (Exception ex)
            {

                throw ex;
            }

            ColorNegocio consulta_color = new ColorNegocio();
            try
            {
                l_color = consulta_color.listar();
            }
            catch (Exception ex)
            {

                throw ex;
            }

            SexoNegocio consulta_sexo = new SexoNegocio();
            try
            {
                l_sexo = consulta_sexo.listar();
            }
            catch (Exception ex)
            {

                throw ex;
            }

            TalleNegocio consulta_talle = new TalleNegocio();
            try
            {
                l_talle = consulta_talle.listar();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void B_Agregar_Categoria_Click(object sender, EventArgs e)
        {
            Response.Redirect("Agregar_Categoria.aspx");
        }

        protected void B_Agregar_Marca_Click(object sender, EventArgs e)
        {
            Response.Redirect("Agregar_Marca.aspx");
        }
        protected void B_Agregar_Color_Click(object sender, EventArgs e)
        {
            Response.Redirect("Agregar_Color.aspx");
        }
        protected void B_Agregar_Sexo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Agregar_Sexo.aspx");
        }
        protected void B_Agregar_Talle_Click(object sender, EventArgs e)
        {
            Response.Redirect("Agregar_Talle.aspx");
        }
    }
}
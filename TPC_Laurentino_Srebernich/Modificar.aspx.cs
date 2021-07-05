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
            Consulta negocio = new Consulta();
            try
            {
                lista = negocio.consulta();
                Session.Add("listaproduct", lista);
                Cargar_desplegables();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        private void Cargar_desplegables()
        {
            MarcaNegocio Marcas = new MarcaNegocio();
            CategoriaNegocio Categorias = new CategoriaNegocio();
            TalleNegocio Talles = new TalleNegocio();
            ColorNegocio Colores = new ColorNegocio();
            SexoNegocio Sexos = new SexoNegocio();
                        
            try
            {
                if (!IsPostBack)
                {
                    //Carga las marcas
                    Desplegable_Marcas.DataSource = Marcas.listar();
                    Desplegable_Marcas.DataTextField = "Nombre";
                    Desplegable_Marcas.DataValueField = "Id";
                    Desplegable_Marcas.DataBind();
                   /* //Carga las Categorias
                    D_Categoria.DataSource = Categorias.listar();
                    D_Categoria.DataTextField = "Nombre";
                    D_Categoria.DataValueField = "Id";
                    D_Categoria.DataBind();
                    //Carga los Talles
                    D_Talle.DataSource = Talles.listar();
                    D_Talle.DataTextField = "Nombre";
                    D_Talle.DataValueField = "Id";
                    D_Talle.DataBind();
                    //Carga los Colores
                    D_Color1.DataSource = Colores.listar();
                    D_Color1.DataTextField = "Nombre";
                    D_Color1.DataValueField = "Id";
                    D_Color1.DataBind();
                    D_Color2.DataSource = Colores.listar();
                    D_Color2.DataTextField = "Nombre";
                    D_Color2.DataValueField = "Id";
                    D_Color2.DataBind();
                    //Carga los sexos
                    D_Sexo.DataSource = Sexos.listar();
                    D_Sexo.DataTextField = "Nombre";
                    D_Sexo.DataValueField = "Id";
                    D_Sexo.DataBind();*/
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
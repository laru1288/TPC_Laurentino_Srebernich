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
    public partial class RopaInterior : System.Web.UI.Page
    {
        public List<Producto> listado = new List<Producto>();
        public List<Producto> final = new List<Producto>();
        public List<Categoria> categorias = new List<Categoria>();
        public List<Color> colores = new List<Color>();
        public List<Talle> talles = new List<Talle>();
        public List<Clasificacion> subcategoria = new List<Clasificacion>();

        public int filtro;
        public int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            Consulta negocio = new Consulta();
            CategoriaNegocio consultacategorias = new CategoriaNegocio();
            SubCategoriaNegocio subcat = new SubCategoriaNegocio();


            try
            {
                cargar_filtros_categorias();
                filtro = 3;
                subcategoria = subcat.listar();
                listado = negocio.consulta();
                foreach (Dominio.Producto item in listado)
                {
                        if (item.Categorias.IDSub == filtro) final.Add(item);
                    
                }


                //categorias = consultacategorias.listar();
                //Categoria aux = categorias.Find(x => x.Nombre == filtro);
                //id = aux.ID;
                Session.Add("listaproduct", final);

            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        protected void cargar_filtros_categorias()
        {
            CategoriaNegocio categorias = new CategoriaNegocio();
            ColorNegocio consultacolores = new ColorNegocio();
            TalleNegocio consultatalles = new TalleNegocio();
            try
            {
                if (!IsPostBack)
                {/*
                    Checkbox_categorias.DataSource = categorias.listar();
                    Checkbox_categorias.DataTextField = "Nombre";
                    Checkbox_categorias.DataValueField = "Id";
                    Checkbox_categorias.DataBind();*/

                    rediobtn.DataSource = consultacolores.listar();
                    rediobtn.DataTextField = "Nombre";
                    rediobtn.DataValueField = "Id";
                    rediobtn.DataBind();

                    radiotalles.DataSource = consultatalles.listar();
                    radiotalles.DataTextField = "Nombre";
                    radiotalles.DataValueField = "Id";
                    radiotalles.DataBind();

                }
            }
            catch (Exception)
            {

                throw;
            }

        }
    }
}
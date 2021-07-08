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
    public partial class EditarMarca : System.Web.UI.Page
    {
        List<Categoria> listacategorias = new List<Categoria>();
        Categoria Aeditar = new Categoria();
        SubCategoriaNegocio subcategoria = new SubCategoriaNegocio();
        CategoriaNegocio Categorias = new CategoriaNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar_desplegables();
            var id = (Request.QueryString["id"]);
            buscar_id(Convert.ToInt32(id));
        }

        protected void buscar_id(int id)
        {
            listacategorias = (List<Categoria>)Session["listacategorias"];
            Aeditar = listacategorias.Find(x => x.ID == id);
            if (!IsPostBack)
            {
                cargar_datos(Aeditar);
            }
        }
        protected void cargar_datos(Categoria Aeditar)
        {

            D_Nombre.SelectedIndex = D_Nombre.Items.IndexOf(D_Nombre.Items.FindByValue(Aeditar.ID.ToString()));
            D_subcategoria.SelectedIndex = D_subcategoria.Items.IndexOf(D_subcategoria.Items.FindByValue(Aeditar.IDSub.ToString()));
            
            Cargar_desplegables();

        }
        private void Cargar_desplegables()
        {
            List<Categoria> lista = new List<Categoria>();


            try
            {
                if (!IsPostBack)
                {
                    //Carga las Categorias
                    D_Nombre.DataSource = Categorias.listar();
                    D_Nombre.DataTextField = "Nombre";
                    D_Nombre.DataValueField = "Id";
                    D_Nombre.DataBind();
                    lista = Categorias.listar();
                    Session.Add("listacategorias", lista);

                    //Carga las subcategorias
                    D_subcategoria.DataSource = subcategoria.listar();
                    D_subcategoria.DataTextField = "Nombre";
                    D_subcategoria.DataValueField = "Id";
                    D_subcategoria.DataBind();


                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void B_modificar_categoria_Click(object sender, EventArgs e)
        {
            Consulta Modificar = new Consulta();
            Categoria nuevo = new Categoria();

            try
            {
                nuevo.Nombre = Convert.ToString(D_Nombre.SelectedItem.Text);
                nuevo.IDSub = Convert.ToInt32(D_subcategoria.SelectedItem.Value);
                nuevo.ID = Aeditar.ID;
                Modificar.Modificar_Categoria(nuevo);

            }
            catch (Exception EX )
            {

                throw EX;
            }


        }
    }
}
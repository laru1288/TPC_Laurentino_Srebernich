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
    public partial class Agregar_Marca : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar_desplegables();
        }

        private void Cargar_desplegables()
        {
            SubCategoriaNegocio Subcategorias = new SubCategoriaNegocio();
            

            try
            {
                if (!IsPostBack)
                {
                    //Carga las marcas
                    D_Subcategorias.DataSource = Subcategorias.listar();
                    D_Subcategorias.DataTextField = "Nombre";
                    D_Subcategorias.DataValueField = "Id";
                    D_Subcategorias.DataBind();
                   



                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void B_agregar_categoria_Click(object sender, EventArgs e)
        {
            Consulta Agregar = new Consulta();
            Categoria nuevo = new Categoria();

            nuevo.Nombre = textNombre.Text;
            nuevo.IDSub = Convert.ToInt32(D_Subcategorias.SelectedItem.Value);
            nuevo.Nombresub = D_Subcategorias.SelectedItem.Text;
            Agregar.Agregar_Categoria(nuevo);
        }
    }
}
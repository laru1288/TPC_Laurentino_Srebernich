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
    public partial class Agregar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar_desplegables();
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
                    D_Marcas.DataSource = Marcas.listar();
                    D_Marcas.DataTextField = "Nombre";
                    D_Marcas.DataValueField = "Id";
                    D_Marcas.DataBind();
                    //Carga las Categorias
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
                    D_Sexo.DataBind();
                    
                }
            }
            catch (Exception ex )
            {

                throw ex;
            }
        }

        protected void Button_Agregar_Click(object sender, EventArgs e)
        {
            Consulta Agregar = new Consulta();
            Producto nuevo = new Producto();
            try
            {
                nuevo.Nombre = Nombre.ToString();
                nuevo.Ancho = Convert.ToInt32(Ancho.ToString());
                nuevo.Categorias.ID = Convert.ToInt32(D_Categoria.SelectedItem.Value);
                nuevo.Color.ID = Convert.ToInt32(D_Color1.SelectedItem.Value);
                nuevo.Color_2.ID = Convert.ToInt32(D_Color2.SelectedItem.Value);
                nuevo.Descripcion = Descripcion.ToString();
                nuevo.Estrella = CheckBox1.Checked;
                nuevo.Garage = CheckBox3.Checked;
                nuevo.Imagen_2 = Imagen_2.ToString();
                nuevo.Imagen_3 = Imagen_3.ToString();
                nuevo.Imagen_principal = Imagen_Principal.ToString();
                nuevo.Largo = Convert.ToInt32(Largo.ToString());
                nuevo.Marcas.ID = Convert.ToInt32(D_Marcas.SelectedItem.Value);
                nuevo.Nuevo = CheckBox2.Checked;
                nuevo.Precio = Convert.ToDecimal(Precio.ToString());
                nuevo.Precio_prom = Convert.ToInt32(Precio_prom.ToString());
                nuevo.Sexo.ID = Convert.ToInt16(D_Sexo.SelectedItem.Value);
                nuevo.Stock = Convert.ToInt32(Stock.ToString());
                nuevo.Talle.ID = Convert.ToInt32(D_Talle.SelectedItem.Value);

                Agregar.Agregar(nuevo);


            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}
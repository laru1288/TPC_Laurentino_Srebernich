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
	public partial class Editar : System.Web.UI.Page
	{
		List<Producto> listaproductos = new List<Producto>();
		Producto Aeditar = new Producto();
		protected void Page_Load(object sender, EventArgs e)
		{
            

            var id = (Request.QueryString["id"]);
			buscar_id(Convert.ToInt32( id));
		}

		protected void buscar_id(int id)
        {
			listaproductos = (List<Producto>)Session["listaproduct"];
			Aeditar = listaproductos.Find(x => x.ID == id);
			cargar_datos(Aeditar);
		}

		protected void cargar_datos (Producto Aeditar)
        {
			textNombre.Text = Aeditar.Nombre;
			TextAncho.Text = Aeditar.Ancho.ToString();
            //D_Categoria.Items.;
            D_Categoria.Items.FindByValue(Aeditar.Categorias.ID.ToString());
           // if (D_Categoria.Items != null) D_Categoria.SelectedValue
           /* int valor = Aeditar.Categorias.ID;
            foreach (D_Categoria.DataValueField item in D_Categoria.Items)
            {
                if (item == valor)
                    item.= True;

            }*/


            //D_Color1
            //D_Color2
            TextDescripcion.Text = Aeditar.Descripcion;
			//CheckBox1
			//CheckBox3
			Textimagen2.Text = Aeditar.Imagen_2;
			TextImagen3.Text = Aeditar.Imagen_3;
			TextImagenprincipal.Text = Aeditar.Imagen_principal;
			TextLargo.Text = Aeditar.Largo.ToString();
			//D_Marcas
			//heckBox2
			TextPrecio.Text = Aeditar.Precio.ToString("0.00");
			Textpreciopromo.Text = Aeditar.Precio_prom.ToString("0.00");
			//D_Sexo
			TextStock.Text = Aeditar.Stock.ToString();
            //D_Talle
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
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
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
        MarcaNegocio Marcas = new MarcaNegocio();
        CategoriaNegocio Categorias = new CategoriaNegocio();
        TalleNegocio Talles = new TalleNegocio();
        ColorNegocio Colores = new ColorNegocio();
        SexoNegocio Sexos = new SexoNegocio();
       
        protected void Page_Load(object sender, EventArgs e)
		{
            if (!(Session["usuario"] != null && ((Dominio.Usuario)Session["usuario"]).TipoUsuario == Dominio.TipoUsuario.ADMIN))
            {
                Session.Add("error", "No tienes permisos para ingresar a esta pantalla. Necesitas nivel admin.");
                Response.Redirect("Error.aspx", false);
            }
            Cargar_desplegables();
            var id = (Request.QueryString["id"]);
			buscar_id(Convert.ToInt32( id));
		}

		protected void buscar_id(int id)
        {
			listaproductos = (List<Producto>)Session["listaproduct"];
			Aeditar = listaproductos.Find(x => x.ID == id);
            if (!IsPostBack)
            {
                cargar_datos(Aeditar);
            }
		}

		protected void cargar_datos (Producto Aeditar)
        {
			textNombre.Text = Aeditar.Nombre;
			TextAncho.Text = Aeditar.Ancho.ToString();
            D_Categoria.SelectedIndex = D_Categoria.Items.IndexOf(D_Categoria.Items.FindByValue(Aeditar.Categorias.ID.ToString()));
            D_Color1.SelectedIndex = D_Color1.Items.IndexOf(D_Color1.Items.FindByValue(Aeditar.Color.ID.ToString()));
            D_Color2.SelectedIndex = D_Color2.Items.IndexOf(D_Color2.Items.FindByValue(Aeditar.Color_2.ID.ToString()));
            TextDescripcion.Text = Aeditar.Descripcion;
            if (Aeditar.Estrella) TipoCheckBox1.Checked=true;
            if (Aeditar.Garage) TipoCheckBox3.Checked = true;
            if (Aeditar.Nuevo) TipoCheckBox2.Checked = true;
            Textimagen2.Text = Aeditar.Imagen_2;
			TextImagen3.Text = Aeditar.Imagen_3;
			TextImagenprincipal.Text = Aeditar.Imagen_principal;
			TextLargo.Text = Aeditar.Largo.ToString();
            D_Marcas.SelectedIndex = D_Marcas.Items.IndexOf(D_Marcas.Items.FindByValue(Aeditar.Marcas.ID.ToString()));            
            TextPrecio.Text = Aeditar.Precio.ToString("0.00");
			Textpreciopromo.Text = Aeditar.Precio_prom.ToString("0.00");
            D_Sexo.SelectedIndex = D_Sexo.Items.IndexOf(D_Sexo.Items.FindByValue(Aeditar.Sexo.ID.ToString()));
            TextStock.Text = Aeditar.Stock.ToString();
            D_Talle.SelectedIndex = D_Talle.Items.IndexOf(D_Talle.Items.FindByValue(Aeditar.Talle.ID.ToString()));
           
            Cargar_desplegables();

        }

        private void Cargar_desplegables()
        {
             List<Categoria> lista = new List<Categoria>();


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
                    lista = Categorias.listar();
                    Session.Add("listacategoria", lista);
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

        protected void B_modificar_Click(object sender, EventArgs e)
        {
            /*Page.Validate();
            if (!Page.IsValid)
            {
                return;
            }*/

            Consulta Modificar = new Consulta();
            Producto nuevo = new Producto();
            nuevo.Categorias = new Categoria();
            nuevo.Color = new Color();
            nuevo.Color_2 = new Color();
            nuevo.Marcas = new Marca();
            nuevo.Sexo = new Sexo();
            nuevo.Talle = new Talle();
            try
            {
                
                    nuevo.Nombre = textNombre.Text;
                    nuevo.Ancho = Convert.ToInt32(TextAncho.Text);
                    nuevo.Categorias.ID = Convert.ToInt32(D_Categoria.SelectedItem.Value);
                    nuevo.Color.ID = Convert.ToInt32(D_Color1.SelectedItem.Value);
                    nuevo.Color_2.ID = Convert.ToInt32(D_Color2.SelectedItem.Value);
                    nuevo.Descripcion = TextDescripcion.Text;
                    nuevo.Estrella = TipoCheckBox1.Checked;
                    nuevo.Garage = TipoCheckBox3.Checked;
                    nuevo.Imagen_2 = Textimagen2.Text;
                    nuevo.Imagen_3 = TextImagen3.Text;
                    nuevo.Imagen_principal = TextImagenprincipal.Text;
                    nuevo.Largo = Convert.ToInt32(TextLargo.Text);
                    nuevo.Marcas.ID = Convert.ToInt32(D_Marcas.SelectedItem.Value);
                    nuevo.Nuevo = TipoCheckBox2.Checked;
                    nuevo.Precio = Convert.ToDecimal(TextPrecio.Text);
                    nuevo.Precio_prom = Convert.ToDecimal(Textpreciopromo.Text);
                    nuevo.Sexo.ID = Convert.ToInt16(D_Sexo.SelectedItem.Value);
                    nuevo.Stock = Convert.ToInt32(TextStock.Text);
                    nuevo.Talle.ID = Convert.ToInt32(D_Talle.SelectedItem.Value);
                    nuevo.ID = Aeditar.ID;
                  

                    Modificar.Modificar(nuevo);
                    Response.Redirect("Exito.aspx");

            }
            catch (Exception ex)
            {

                throw ex;
            }


        }
    }
}
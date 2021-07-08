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
        List<Marca> listamarcas = new List<Marca>();
        Marca Aeditar = new Marca();
        MarcaNegocio Marcas = new MarcaNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            var id = (Request.QueryString["id"]);
            buscar_id(Convert.ToInt32(id));
        }

        protected void buscar_id(int id)
        {
            listamarcas = Marcas.listar();
            Aeditar = listamarcas.Find(x => x.ID == id);
            if (!IsPostBack)
            {
                cargar_datos(Aeditar);
            }
        }
        protected void cargar_datos(Marca Aeditar)
        {
            textNombre.Text = Aeditar.Nombre;

        }
       

        protected void B_modificar_marca_Click(object sender, EventArgs e)
        {
            Consulta Modificar = new Consulta();
            Marca nuevo = new Marca();

            try
            {
                nuevo.Nombre = textNombre.Text;
                nuevo.ID = Aeditar.ID;
                Modificar.Modificar_Marca(nuevo);
                Response.Redirect("Exito2.aspx");
            }
            catch (Exception EX)
            {

                throw EX;
            }


        }
    }
}
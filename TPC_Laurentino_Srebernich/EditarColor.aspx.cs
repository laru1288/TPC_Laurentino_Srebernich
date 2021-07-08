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
    public partial class EditarColor : System.Web.UI.Page
    {
            List<Color> listacolores = new List<Color>();
            Color Aeditar = new Color();
            ColorNegocio Colores = new ColorNegocio();
            protected void Page_Load(object sender, EventArgs e)
            {

                var id = (Request.QueryString["id"]);
                buscar_id(Convert.ToInt32(id));
            }

            protected void buscar_id(int id)
            {
                listacolores = Colores.listar();
                Aeditar = listacolores.Find(x => x.ID == id);
                if (!IsPostBack)
                {
                    cargar_datos(Aeditar);
                }
            }
            protected void cargar_datos(Color Aeditar)
            {
                textNombre.Text = Aeditar.Nombre;

            }


            protected void B_modificar_color_Click(object sender, EventArgs e)
            {
                Consulta Modificar = new Consulta();
                Color nuevo = new Color();

                try
                {
                    nuevo.Nombre = textNombre.Text;
                    nuevo.ID = Aeditar.ID;
                    Modificar.Modificar_Color(nuevo);
                    Response.Redirect("Exito2.aspx");
                }
                catch (Exception EX)
                {

                    throw EX;
                }


            }
        }
    }
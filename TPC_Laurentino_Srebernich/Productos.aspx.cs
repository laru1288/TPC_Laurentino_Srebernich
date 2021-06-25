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
    public partial class WebForm1 : System.Web.UI.Page
    {
        public List<Producto> lista = new List<Producto>();
        protected void Page_Load(object sender, EventArgs e){
            Consulta negocio = new Consulta();
            try
            {
                lista = negocio.consulta();
                Session.Add("listaproduct", lista);
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}
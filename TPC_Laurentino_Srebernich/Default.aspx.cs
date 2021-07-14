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
    public partial class _Default : Page
    {
        public List<Producto> lista = new List<Producto>();
        public List<Producto> Promo = new List<Producto>();
        public bool titulo;
        protected void Page_Load(object sender, EventArgs e)
        {
            Consulta negocio = new Consulta();
            try
            {
                lista = negocio.consulta();
                Session.Add("listaproduct", lista);

                Promo = lista.FindAll(x => x.Garage == true);
                titulo = Promo.Count != 0 ? true : false;


    }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
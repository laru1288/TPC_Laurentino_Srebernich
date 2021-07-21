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
    public partial class SiteMaster : MasterPage
    {
        public List<Categoria> subcategorias_partedearriba = new List<Categoria>();
        public List<Categoria> subcategorias_partedeabajo = new List<Categoria>();
        Carrito sum = new Carrito();
        protected void Page_Load(object sender, EventArgs e)
        {
            int aux1 = sum.sumacarrito();
            var aux2 = aux1.ToString();
            lblsuma.Text = aux2;

            CategoriaNegocio partesdearriba = new CategoriaNegocio();
            if (!IsPostBack) { 
                subcategorias_partedearriba = partesdearriba.listar_partedearriba();
                subcategorias_partedeabajo = partesdearriba.listar_partedeabajo();
            }

        }

       

    }
}
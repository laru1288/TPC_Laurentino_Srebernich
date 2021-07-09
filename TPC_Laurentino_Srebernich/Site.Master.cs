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

        protected void Page_Load(object sender, EventArgs e)
        {
            CategoriaNegocio partesdearria = new CategoriaNegocio();
            if (!IsPostBack) { 
                subcategorias_partedearriba = partesdearria.listar_partedearriba();
                subcategorias_partedeabajo = partesdearria.listar_partedeabajo();
            }

        }

       

    }
}
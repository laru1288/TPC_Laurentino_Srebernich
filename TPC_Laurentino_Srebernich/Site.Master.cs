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
        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar_desplegables();
        }

        protected void Cargar_desplegables()
        {
            CategoriaNegocio partesdearria = new CategoriaNegocio();

            try
            {
                if (!IsPostBack)
                {
                    //Carga las marcas
                  /*  D_partedearriba.DataSource = partesdearria.listar_partedearriba();
                    D_partedearriba.DataTextField = "Nombre";
                    D_partedearriba.DataValueField = "Id";
                    D_partedearriba.DataBind();*/
                }
             }
            catch (Exception ex)
            {

                throw ex ;
            }
        }

    }
}
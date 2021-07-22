using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPC_Laurentino_Srebernich
{
    public partial class PreCheckout : System.Web.UI.Page
    {
        public static List<Dominio.Carrito> carritofinal;
        protected void Page_Load(object sender, EventArgs e)
        {
            carritofinal = (List<Dominio.Carrito>)Session["listacarrito"];
        }


        protected void B_aceptar_Click(object sender, EventArgs e)
        {

        }
    }
}
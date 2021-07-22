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
    public partial class Checkout : System.Web.UI.Page
    {
        public static List<Dominio.Carrito> carritofinal;
        protected void Page_Load(object sender, EventArgs e)
        {
            carritofinal = (List<Dominio.Carrito>)Session["listacarrito"];
        }

        protected void EnvioMail()
        {
            EmailService emailservice = new EmailService();

            //emailservice.armarcorreo(TextMail.Text, /*asunto*/, /*mensaje*/);


            try
            {
                emailservice.enviarmail();
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        protected void B_aceptar_Click(object sender, EventArgs e)
        {

        }
    }
}
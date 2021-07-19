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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EnvioMail()
        {
            EmailService emailservice = new EmailService();
            //emailservice.armarcorreo(TextMail.Text, /*asunto*/, /*mensaje*/);

            try
            {
                emailservice.enviarmail();
            }
            catch (Exception ex )
            {

                throw ex;
            }

        }
    }
}
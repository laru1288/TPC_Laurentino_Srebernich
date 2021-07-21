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
<<<<<<< HEAD
           // emailservice.armarcorreo(TextMail.Text, /*asunto*/, /*mensaje*/);
=======
            //emailservice.armarcorreo(TextMail.Text, /*asunto*/, /*mensaje*/);
>>>>>>> 77195532c47c1cca98e9aacc9dd16697ed1ed1c1

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
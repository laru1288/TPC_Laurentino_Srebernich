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
    public partial class Contacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void B_enviar_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (!Page.IsValid) return;

            EmailService emailservice = new EmailService();

            emailservice.armarcorreo(TextEmail.Text, "consulta", Textmensaje.Text, txtNombre.Text);

            try
            {
                emailservice.enviarmail();
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }



        }
    }
}
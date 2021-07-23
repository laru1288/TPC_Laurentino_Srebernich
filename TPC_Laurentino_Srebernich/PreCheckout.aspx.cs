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
    public partial class PreCheckout : System.Web.UI.Page
    {
        public static List<Dominio.Carrito> carritofinal;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            carritofinal = (List<Dominio.Carrito>)Session["listacarrito"];               

            try
            {       
                decimal su = carritofinal.Sum(x => x.subtotal);
                var aux = su.ToString("0.00");
                lblTotal.Text = aux;
            }
            catch (Exception)
            {

            }

        }


        protected void B_aceptar_Click(object sender, EventArgs e)
        {
            int DNI, Id_Pago = 1, Id_Envio= 1;

            DNI = Convert.ToInt32(TextBoxdni.Text);

            if (Tipo1.Checked) { Id_Pago = 1; }
            if (Tipo2.Checked) { Id_Pago = 2; }
            if (Tipo3.Checked) { Id_Pago = 3; }

            if (enviomercadoenvios.Checked) { Id_Envio = 1; }
            if (Retirolocal.Checked) { Id_Envio = 2; }
            if (Motomensajeria.Checked) { Id_Envio = 3; }


            Response.Redirect("Checkout.aspx?dni="+ DNI + "&pago=" + Id_Pago + "&envio=" + Id_Envio);
            

        }




    }
}
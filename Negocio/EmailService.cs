using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
using System.Net;

namespace Negocio
{
    public class EmailService {
        private MailMessage email;
        private SmtpClient server;

        public EmailService() {
            server = new SmtpClient();
            server.Credentials = new NetworkCredential("pruebaparaprog3@gmail.com", "programacion389");
            server.EnableSsl = true;
            server.Port = 587;
            server.Host = "smtp.gmail.com";
        }

        public void armarcorreo(string emaildestino, string asunto, string cuerpo) {
            email = new MailMessage();
            email.From = new MailAddress("noresponder@pruebaparaprog3gmail.com");
            email.To.Add(emaildestino);
            email.Subject = asunto;
            email.IsBodyHtml = true;
            email.Body = "<h1>Gracias por tu compra </h1>";
        }

        public void armarcorreo(string emaildestino, string asunto, string cuerpo, string Nombre)
        {
            email = new MailMessage();
            email.From = new MailAddress("noresponder@pruebaparaprog3gmail.com");
            email.To.Add(emaildestino);
            email.Subject = asunto;
            email.IsBodyHtml = true;
            email.Body = "<h1>Mi nombre es  </h1>"+Nombre;
        }

        public void enviarmail(){
            try
            {
                server.Send(email);
            }
            catch (Exception ex )
            {

                throw ex;
            }
        }
    }
}

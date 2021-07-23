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
        public static List<DatosCliente> ListaClientes;
        public static List<Ventas> ListaVentas;
        public static List<Ventas> ListaFiltrada;
        public int dni, Pago, Envio, idcli;
        public DateTime fecha_buscada;
        public bool encontro=false;
        public DatosCliente nuevocliente = new DatosCliente();
        protected void Page_Load(object sender, EventArgs e)
        {
            carritofinal = (List<Dominio.Carrito>)Session["listacarrito"];
            
                dni = Convert.ToInt32(Request.QueryString["dni"]);
                Pago = Convert.ToInt32(Request.QueryString["pago"]);
                Envio = Convert.ToInt32(Request.QueryString["envio"]);
            //cargar ListaClientes
            Datos_Cliente_Negocio consultaclientes = new Datos_Cliente_Negocio();
            ListaClientes = consultaclientes.listar();

            //Busca cliente por dni y si encontro carga los datos 
            DatosCliente cli = new DatosCliente();
            cli = ListaClientes.Find(x => x.DNI == dni);
            if (cli != null)
            {
                TextMail.Text = cli.Mail;
                TextApellido.Text = cli.Apellido;
                TextNombre.Text = cli.Nombre;
                TextTelefono.Text = cli.Telefono.ToString();
                TextDireccion.Text = cli.Direccion;
                TextNumero.Text = cli.Numero.ToString();
                TextPiso.Text = cli.Piso.ToString();
                TextEntrecalles.Text = cli.Entrecalles;
                TextProvincia.Text = cli.Provincia;
                TextLocalidad.Text = cli.Localidad;
                TextCodigoPostal.Text = cli.Cp.ToString();
                TextObservaciones.Text = cli.Observaciones;
                encontro = true;
            }
            
        }

        protected void enviar_mail()
        {
            Page.Validate();
            //if (!Page.IsValid) return;

            EmailService emailservice = new EmailService();
            string cuerpomail;
            cuerpomail = "Gracias por tu compra"; //mas los productos
            emailservice.armarcorreo(nuevocliente.Mail, "compra", cuerpomail);

            try
            {
                emailservice.enviarmail();
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }



        }



        protected void B_aceptar_Click(object sender, EventArgs e)
        {
            Agregar_Cliente();
            Buscar_IdCliente();
            Agregar_Venta();
            Consulta Buscar = new Consulta();
            int id = Buscar.Buscar_Id_Venta(idcli);
            Agregar_Producto_vendido(id);
            enviar_mail();
            Response.Redirect("Gracoasporsucompra.aspx");

        }

        protected void Agregar_Cliente ()
        {
            Consulta Agregar = new Consulta();
            
            
            try
            {
                nuevocliente.Mail = TextMail.Text;
                nuevocliente.Apellido = TextApellido.Text;
                nuevocliente.Nombre = TextNombre.Text;
                nuevocliente.Telefono = Convert.ToInt32(TextTelefono.Text);
                nuevocliente.Direccion = TextDireccion.Text;
                nuevocliente.Numero = Convert.ToInt32(TextNumero.Text);
                nuevocliente.Piso = Convert.ToInt32(TextPiso.Text);
                nuevocliente.Entrecalles = TextEntrecalles.Text;
                nuevocliente.Provincia = TextProvincia.Text;
                nuevocliente.Localidad = TextLocalidad.Text;
                nuevocliente.Cp = Convert.ToInt32(TextCodigoPostal.Text);
                nuevocliente.Observaciones = TextObservaciones.Text;
                nuevocliente.DNI = dni;

                if (encontro)
                {
                    Agregar.Modificar_Cliente(nuevocliente);
                }
                else
                {
                    Agregar.Agregar_Cliente(nuevocliente);
                }
               
                                              
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }


        }

        protected void Agregar_Venta()
        {
            Consulta Agregar = new Consulta();
            Ventas nuevo = new Ventas();
            

            try
            {
               // nuevo.Fecha = DateTime.Now;
                nuevo.ID_cliente = idcli;
                nuevo.ID_Estado = 1;
                nuevo.ID_MetodoPago = Pago;
                nuevo.ID_TipoEnvio = Envio;
               // fecha_buscada = nuevo.Fecha;

                Agregar.Agregar_Venta(nuevo);

            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }


        }

        protected void Agregar_Producto_vendido(int Id_Venta)
        {
            Consulta Agregar = new Consulta();
            Producto_Vendido nuevo = new Producto_Vendido();
            

            try
            {

                foreach (Dominio.Carrito item in carritofinal) {
                    nuevo.ID_Venta = Id_Venta;    
                    nuevo.ID_codigo_producto = item.Producto.ID;
                    nuevo.Color = item.Producto.Color.Nombre;
                    nuevo.Cantidad = item.Cant;
                    nuevo.Talle = item.Producto.Talle.Nombre;
                    nuevo.Precio_vendido = item.subtotal;

                    Agregar.Agregar_Producto_Vendido(nuevo);
                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }
        }


        void Buscar_IdCliente() 
        {
            Datos_Cliente_Negocio consultaclientes = new Datos_Cliente_Negocio();
            ListaClientes = consultaclientes.listar();
            DatosCliente cli = new DatosCliente();
            cli = ListaClientes.Find(x => x.DNI == dni);
            idcli = cli.ID;
                        
        }

    }
}
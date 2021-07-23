﻿using System;
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
        public int dni, Pago, Envio;
        protected void Page_Load(object sender, EventArgs e)
        {
            carritofinal = (List<Dominio.Carrito>)Session["listacarrito"];
            
                dni = Convert.ToInt32(Request.QueryString["dni"]);
                Pago = Convert.ToInt32(Request.QueryString["pago"]);
                Envio = Convert.ToInt32(Request.QueryString["envio"]);
            
            //Busca cliente por dni y si encontro carga los datos 
            DatosCliente cli = ListaClientes.Find(x => x.DNI == dni);
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

            }

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
            Agregar_Cliente();
            Agregar_Venta();
            int id = Buscar_ID_Venta();
            Agregar_Producto_vendido(id);


        }

        protected void Agregar_Cliente ()
        {
            Consulta Agregar = new Consulta();
            DatosCliente nuevo = new DatosCliente();
            
            try
            {
                nuevo.Mail = TextMail.Text;
                nuevo.Apellido = TextApellido.Text;
                nuevo.Nombre = TextNombre.Text;
                nuevo.Telefono = Convert.ToInt32(TextTelefono.Text);
                nuevo.Direccion = TextDireccion.Text;
                nuevo.Numero = Convert.ToInt32(TextNumero.Text);
                nuevo.Piso = Convert.ToInt32(TextPiso.Text);
                nuevo.Entrecalles = TextEntrecalles.Text;
                nuevo.Provincia = TextProvincia.Text;
                nuevo.Localidad = TextLocalidad.Text;
                nuevo.Cp = Convert.ToInt32(TextCodigoPostal.Text);
                nuevo.Observaciones = TextObservaciones.Text;
                
                Agregar.Agregar_Cliente(nuevo);
                                              
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void Agregar_Venta()
        {
            Consulta Agregar = new Consulta();
            Ventas nuevo = new Ventas();
            

            try
            {
                nuevo.Fecha = DateTime.Now; 
                nuevo.ID_cliente = 1;
                nuevo.ID_Estado = 1;
                nuevo.ID_MetodoPago = Pago;
                nuevo.ID_TipoEnvio = Envio;
               

                Agregar.Agregar_Venta(nuevo);

            }
            catch (Exception ex)
            {

                throw ex;
            }


        }

        protected void Agregar_Producto_vendido(int Id_Venta)
        {
            Consulta Agregar = new Consulta();
            Producto_Vendido nuevo = new Producto_Vendido();


            try
            {

                foreach (Dominio.Carrito item in carritofinal) {
                    //nuevo.ID_Venta = ;    //Ver como levantar el ID de venta
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

                throw ex;
            }
        }

        int Buscar_ID_Venta()
        {
            int ID=0;

            return(ID);  
        }


    }
}
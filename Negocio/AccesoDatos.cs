using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Dominio;

namespace Negocio
{
    class AccesoDatos  {
        private SqlConnection conexion;
        private SqlCommand comando;
        private SqlDataReader lector;

        public AccesoDatos()
        {
            conexion = new SqlConnection("data source = (local)\\SQLEXPRESS; initial catalog= Laurentino_Srebernich_DB; integrated security = true;");
            comando = new SqlCommand();

        }

        public void SetearConsulta(string consulta)
        {

            comando.CommandType = System.Data.CommandType.Text;
            comando.CommandText = consulta;
        }

        public void EjecutarLectura()
        {
            comando.Connection = conexion;
            conexion.Open();
            lector = comando.ExecuteReader();
        }

        public void cerrarConexion()
        {
            if (lector != null)
                lector.Close();
            conexion.Close();
        }


        public SqlDataReader Lector
        {
            get { return lector; }

        }

        internal void EjectutarAccion()
        {
            comando.Connection = conexion;
            conexion.Open();
            comando.ExecuteNonQuery();
        }

        public void setear_parametro(string nombre_parametro, object valor)
        {
            comando.Parameters.AddWithValue(nombre_parametro, valor);
        }
    }
}

﻿using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Negocio
{
    public class MarcaNegocio
    {
        public List<Marca> listar()
        {
            SqlConnection conexion = new SqlConnection();
            SqlCommand comando = new SqlCommand();
            SqlDataReader lector;
            List<Marca> lista = new List<Marca>();

            conexion.ConnectionString = "data source=.\\sqlexpress01; initial catalog= CATALOGO_DB; integrated security= sspi";
            comando.CommandType = System.Data.CommandType.Text;
            comando.CommandText = "Select id, Descripcion from Marcas";
            comando.Connection = conexion;

            conexion.Open();
            lector = comando.ExecuteReader();
            while(lector.Read())
            {
                lista.Add(new Marca((int)lector["id"], (string)lector["Descripcion"]));
            }

            lector.Close();
            conexion.Close();

            return lista;
        }
    }
}

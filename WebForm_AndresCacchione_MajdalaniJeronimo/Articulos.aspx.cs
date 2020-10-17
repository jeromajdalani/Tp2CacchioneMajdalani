using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace WebForm_AndresCacchione_MajdalaniJeronimo
{
    public partial class Articulos : System.Web.UI.Page
    {
        public Carrito contenidoCarrito=null;
        public List<Articulo> ListaArticulos { get; set; }
        public List<Articulo> ListaCarrito { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();

            try
            {
                ListaArticulos = negocio.listar();
                Session.Add("listaArticulos", ListaArticulos);
               
            }
            catch (Exception ex)
            {
                Session.Add("Cualquier nombre", ex.ToString());
                Response.Redirect("Error.aspx");
            }
        }

        protected void btnSumarAlCarrito_Click(object sender, EventArgs e)
        {
            if(contenidoCarrito == null)
                contenidoCarrito = new Carrito();
        }
    }
}
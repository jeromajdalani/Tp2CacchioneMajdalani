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
        public List<Articulo> ListaArticulosLocal { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();

            try
            {
                ListaArticulosLocal = negocio.listar();
                Session.Add("listaArticulos", ListaArticulosLocal);
                
                if(Session["listaCarrito"]==null)
                {
                    List<Articulo> listaCarritoLocal = new List<Articulo>();
                    Session.Add("listaCarrito", listaCarritoLocal);
                }
            }
            catch (Exception ex)
            {
                Session.Add("Cualquier nombre", ex.ToString());
                Response.Redirect("Error.aspx");
            }
        }

        protected void btnSumarAlCarrito_Click(object sender, EventArgs e)
        {

        }
    }
}
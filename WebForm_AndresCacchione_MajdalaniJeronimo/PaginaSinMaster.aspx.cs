using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace WebForm_AndresCacchione_MajdalaniJeronimo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public List <Articulo> ListaArticulos{ get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            ListaArticulos = negocio.listar();
        }
    }
}
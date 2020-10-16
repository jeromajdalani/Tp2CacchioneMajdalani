using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm_AndresCacchione_MajdalaniJeronimo
{
    public partial class Detalle : System.Web.UI.Page
    {
        public Articulo Seleccionado { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            int idaux = Convert.ToInt32(Request.QueryString["idArticulo"]);
            List<Articulo> listaAuxiliar = (List<Articulo>)Session["listaArticulos"];
            Seleccionado = listaAuxiliar.Find(aux => aux.ID == idaux);

            //Articulo seleccionado= ((List<Articulo>)Session["listaArticulos"])[];
        }
    }
}
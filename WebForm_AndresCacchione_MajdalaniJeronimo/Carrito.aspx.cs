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
    public partial class Carrito : System.Web.UI.Page
    {
        public List <Articulo> listaCarritoLocal { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            //If llega con ID:
            if(Request.QueryString["idArticulo"] != null)
            { 
                int idaux = Convert.ToInt32(Request.QueryString["idArticulo"]);
                List<Articulo> listaArticulosLocal = (List<Articulo>)Session["listaArticulos"];
                listaCarritoLocal = (List<Articulo>)Session["listaCarrito"];
                listaCarritoLocal.Add(listaArticulosLocal.Find(aux => aux.ID == idaux));
                Session["listaCarrito"] = listaCarritoLocal;
            }
            
            //TODO: Si llega sin id: 

            //TODO: Si llega borrando id: 
        }
    }
}
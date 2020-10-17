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
        public List <Articulo> ListaCarritoLocal { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(ListaCarritoLocal==null)
            {
                ListaCarritoLocal = new List<Articulo>();
            }
            
            if (Session["listaCarrito"] == null)
            {
                Session.Add("listaCarrito", ListaCarritoLocal);
            }

            //If llega con ID:
            if (Request.QueryString["idArticulo"] != null)
            {
                int idaux = Convert.ToInt32(Request.QueryString["idArticulo"]);
                List<Articulo> listaArticulosLocal = (List<Articulo>)Session["listaArticulos"];
                ListaCarritoLocal = (List<Articulo>)Session["listaCarrito"];
                ListaCarritoLocal.Add(listaArticulosLocal.Find(aux => aux.ID == idaux));
                Session["listaCarrito"] = ListaCarritoLocal;
            }

            //TODO: Si llega borrando id:

            ListaCarritoLocal = (List<Articulo>)Session["listaCarrito"];
        }
    }
}
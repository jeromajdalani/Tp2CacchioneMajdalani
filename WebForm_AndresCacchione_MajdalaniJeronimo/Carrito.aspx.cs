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
        public List <Articulo> List { get; set; }
        public Articulo Selec { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            int idaux = Convert.ToInt32(Request.QueryString["idArticulo"]);
            List<Articulo> listaAuxiliar = (List<Articulo>)Session["listaArticulos"];
            Selec = listaAuxiliar.Find(aux => aux.ID == idaux);
            List.Add(Selec);
        }
    }
}
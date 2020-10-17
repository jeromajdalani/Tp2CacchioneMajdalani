using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm_AndresCacchione_MajdalaniJeronimo
{

    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            List<Dominio.Articulo> listaAuxBuscar = new List<Dominio.Articulo>();
            if (Session["listaBuscados"] == null)
                Session.Add("listaBuscados", listaAuxBuscar);

            listaAuxBuscar = (List<Articulo>)Session["listaArticulos"];
            Session["listaBuscados"] = listaAuxBuscar.FindAll(x => x.Categoria.Descripcion.ToUpper().Contains(TxtBuscar.Text.ToUpper()) ||
            x.Descripción.ToUpper().Contains(TxtBuscar.Text.ToUpper()) || x.Marca.Descripcion.ToUpper().Contains(TxtBuscar.Text.ToUpper())
            || x.Nombre.ToUpper().Contains(TxtBuscar.Text.ToUpper()));

            Session["listaArticulos"] = Session["listaBuscados"];
            Response.Redirect("Articulos.aspx");
        }
    }
}
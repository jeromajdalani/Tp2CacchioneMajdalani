<%@ Page Title="Articulos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Articulos.aspx.cs" Inherits="WebForm_AndresCacchione_MajdalaniJeronimo.Articulos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Lista de Artículos</h3>
  
        <hr />
     <%--   <div class="container">--%>
            
           <div class="row">
           <%foreach (Dominio.Articulo item in ListaArticulos)
               {%>
                    <div class="col-md-4">
                        <div class="card" style="width:20rem;" >
                            <img src="<%=item.Imagen%>" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"><%=item.Nombre%></h5>
                                <h5 class="card-title">Precio: $ <%=item.Precio%></h5>
                                <a href="Detalle.aspx?idArticulo=<%=item.ID.ToString()%>" class="btn btn-primary"> Detalle </a>
                                <asp:Button ID="btnSumarAlCarrito" OnClick="btnSumarAlCarrito_Click" Text="Sumar al Carrito" runat="server" BackColor="#00CC00" />
                               <%-- <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> --%>
                            </div>
                        </div>
                    </div>        
                <%
               }%>  
        </div>
    <%--<div class="row">
        <div class="col">
            <a href="Detalle.aspx" class=" btn btn-primary"> </a>
        </div>
    </div>--%>

        <%--</div>--%>
    
    <asp:GridView ID="dgvArticulos" runat="server"></asp:GridView>
</asp:Content>


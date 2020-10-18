<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="WebForm_AndresCacchione_MajdalaniJeronimo.Carrito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Carrito de compras</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"/>
</head>
<body class="bg-primary">
    
    <div>
        <a class="btn btn-outline-dark btn-block" href="Articulos.aspx">Volver al Catálogo</a>
        <h6> Carrito <span class="badge badge-success">(<%=Session["CantidadCarrito"]%>)</span></h6>
       
    </div>
    <asp:Label ID="PrecioaPagar" runat="server" />

    <form id="form1" runat="server">
         <div class="row">
           <%foreach (Dominio.Articulo item in SetArticulos)
               {%>
                    <div class="col-md-4">
                        <div class="card" style="width:20rem;" >
                            <img src="<%=item.Imagen%>" class="card-img-top" alt="..."/>
                            <div class="card-body">
                                <h5 class="card-title"><%=item.Nombre%></h5>
                                <h5 class="card-title>">Cantidad <%=cantidadArticulos[item.ID].ToString()%>  </h5>
                                <h5 class="card-title">Precio: $ <%=item.Precio%></h5>
                                <a class="btn btn-danger" href="Carrito.aspx?idEliminar=<%=item.ID.ToString()%>"> Quitar (-1) </a>
                                <a class="btn btn-success" href="Carrito.aspx?idArticulo=<%=item.ID.ToString()%>"> Agregar (+1) </a>
                               <%-- <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> --%>
                            </div>
                        </div>
                    </div>        
                <%
               }%> 
        </div>
        <div>
        </div>
    </form>
</body>
</html>

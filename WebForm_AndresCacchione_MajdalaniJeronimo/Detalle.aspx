<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="WebForm_AndresCacchione_MajdalaniJeronimo.Detalle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detalle de <% =Seleccionado.Nombre %></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <div class="card" style="width:20rem;" >
                            <img src="<%= Seleccionado.Imagen%>" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"><%=Seleccionado.Nombre%></h5>
                                <h5 class="card-title">Precio: $ <%=Seleccionado.Precio%></h5>
                                <a href="/Articulos.aspx" class="btn btn-primary"> Atras </a>
                                <asp:Button ID="btnSumarAlCarrito" Text="Sumar al Carrito" runat="server" BackColor="#00CC00" />
                                <%--<asp:Button ID=btnDetalle  Text="Detalle" runat="server" BackColor="#CC9900" />
                                <asp:Button ID=btnSumarAlCarrito Text="Sumar al Carrito" runat="server" BackColor="#00CC00" />--%>
                               <%-- <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> --%>
                            </div>
                </div>


        </div>
    </form>
</body>
</html>

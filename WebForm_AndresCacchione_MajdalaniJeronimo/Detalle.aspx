﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="WebForm_AndresCacchione_MajdalaniJeronimo.Detalle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detalle de <% =Seleccionado.Nombre %></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body class="bg-primary justify-content-center align-items-center">
    <form id="form1" runat="server">
        <div>
                <div class="card mr-auto ml-auto mt-auto" style="width:30rem;" >
                            <img src="<%= Seleccionado.Imagen%>" class="card-img-top" alt="..."/>
                            <div class="card-body">
                                <h5 class="card-title"><%=Seleccionado.Nombre%></h5>
                                <p class="card-text"> <%=Seleccionado.Descripción %></p> 
                                <h5 class="card-title">Precio: $ <%=Seleccionado.Precio%></h5>
                                <a href="/Articulos.aspx" class="btn btn-primary mr-auto ml-auto btn-lg"> Atras </a>
                                <a href="/Carrito.aspx?idArticulo=<%= Seleccionado.ID.ToString()%>" class="btn btn-success mr-auto ml-auto btn-lg"> Sumar al carrito </a>
                                
                                <%--<asp:Button ID="btnSumarAlCarrito" Text="Sumar al Carrito" runat="server" BackColor="#00CC00" />--%>
                                
                            </div>
                </div>
        </div>
    </form>
</body>
</html>

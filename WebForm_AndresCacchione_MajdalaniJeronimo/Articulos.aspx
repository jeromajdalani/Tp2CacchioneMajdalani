﻿<%@ Page Title="Articulos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Articulos.aspx.cs" Inherits="WebForm_AndresCacchione_MajdalaniJeronimo.Articulos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
    <h2><%: Title %>.</h2>
  
     <%--   <div class="container">--%>
            
           <div class="row align-content-md-between">
           <%foreach (Dominio.Articulo item in ListaArticulosLocal)
               {%>
                    <div class="col-md-4">
                        <div class="card mt-4" style="width:20rem;" >
                            <img src="<%=item.Imagen%>" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"><%=item.Nombre%></h5>
                                <h5 class="card-title">Precio: $ <%=item.Precio%></h5>
                                <a href="Detalle.aspx?idArticulo=<%=item.ID.ToString()%>" class="btn btn-primary mr-auto ml-auto"> Detalle </a>
                                <a href="Carrito.aspx?idArticulo=<%=item.ID.ToString()%>" class="btn btn-success mr-auto ml-auto"> Sumar al carrito </a>
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


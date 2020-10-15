<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaSinMaster.aspx.cs" Inherits="WebForm_AndresCacchione_MajdalaniJeronimo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PaginaSinMaster</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body >
    <form id="form1" runat="server">
        <hr />
        <div class="container">
            
           
           <%foreach (Dominio.Articulo item in ListaArticulos)
               {%>
                        
                    <div class="card-columns">
                        <div class="card">
                            <img src="<%=item.Imagen%>" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"><%=item.Nombre%></h5>
                               <%-- <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p> --%>
                            </div>
                        </div>
                    </div>        
                <%
               }%>  
        

        </div>
    </form>
</body>
</html>

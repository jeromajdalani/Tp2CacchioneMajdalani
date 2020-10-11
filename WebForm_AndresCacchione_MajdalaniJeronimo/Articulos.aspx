<%@ Page Title="Articulos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Articulos.aspx.cs" Inherits="WebForm_AndresCacchione_MajdalaniJeronimo.Articulos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Lista de Artículos</h3>

    <asp:GridView ID="dgvArticulos" runat="server"></asp:GridView>
</asp:Content>


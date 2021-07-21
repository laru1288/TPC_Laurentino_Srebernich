<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pagina2LoguinAdmin.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Pagina2LoguinAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col">
            <h1>Panel de edicion</h1>
            
            
                <a href="/Agregar" class="btn btn-primary">Agregar productos</a><br />
                <a href="/Modificar" class="btn btn-primary">Modificar productos</a><br />
                <a href="/Editables" class="btn btn-primary">Agregar y modificar otros</a><br />

                <a href="/MenuLogin.aspx" class="btn btn-primary">Regresar</a>
        </div>
    </div>

</asp:Content>

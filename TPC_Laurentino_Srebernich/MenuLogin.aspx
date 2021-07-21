<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuLogin.aspx.cs" Inherits="TPC_Laurentino_Srebernich.MenuLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div class="row">
        <div class="col-12">
            <h3>Te logueaste correctamente.</h3>
            <hr />
        </div>
        
        <div class="col-4">
            <% if (Session["usuario"] != null && ((Dominio.Usuario)Session["usuario"]).TipoUsuario == Dominio.TipoUsuario.ADMIN) {  %>

                <asp:Button Text="Editar" ID="btnPagina2" OnClick="btnPagina2_Click" runat="server" CssClass="btn btn-primary" />
                

            <% } %>
        </div>
    </div>

</asp:Content>

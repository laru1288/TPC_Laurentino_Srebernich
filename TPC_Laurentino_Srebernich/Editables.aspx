<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Editables.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Editables" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <form runat="server">
    <br />
    <br />
    <p>Agregar/Modificar Categorias</p>
    <table class="table table-success table-striped" id="tabla_editables" style="width:100%" > 
       <thead> 
        <tr> 
               <td><p>Accion</p></td>
                <td><p>Nombre</p></td>
                <td><p>Subcategoria</p></td> 
            </thead>
        <tbody> 

             <%foreach ( Dominio.Categoria item in lista)
          {%>
                <tr> 
                     <td><a href="EditarCategoria.aspx?id=<%= item.ID %>&evento=editar" Onclick="modificar" > <i class="far fa-edit"></i></a></td>
                     <td><p> <%= item.Nombre %></p></td> 
                     <td><p> <%= item.Nombresub %></p></td>
                </tr>
                 <%  } %>
            </tbody>

    </table>


     <asp:button type="submit" text="Agregar" ID="B_Agregar_Categoria" class="btn btn-primary" runat="server" Onclick="B_Agregar_Categoria_Click" />


 </form>
</asp:Content>

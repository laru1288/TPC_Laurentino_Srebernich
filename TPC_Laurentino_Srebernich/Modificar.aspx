<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Modificar.aspx.cs" Inherits="TPC_Laurentino_Srebernich.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <form runat="server">
    <h1>Productos</h1> 
    <table class="table table-success table-striped" id="tabla_modificar" style="width:100%" > 
       <thead> 
        <tr> 
                <td><p>Editar</p></td>
                <td><p>Eliminar</p></td>
                <td><p>Nombre</p></td> 
                <td><p>Descripcion</p></td>
                <td><p>Marca</p></td>
                <td><p>Categoria</p></td>
                <td><p>Talle</p></td>
                <td><p>Color</p></td>
                <td><p>Color_2</p></td>
                <td><p>Sexo</p></td>
                <td><p>Imagen_principal</p></td>
                <td><p>Imagen_2</p></td>
                <td><p>Imagen_3</p></td>
                <td><p>Precio</p></td> 
                <td><p>Precio_promo</p></td>
                <td><p>Stock</p></td>
                <td><p>Ancho</p></td>
                <td><p>Largo</p></td>
                <td><p>Estrella</p></td>
                <td><p>Nuevo</p></td>
                <td><p>Garage</p></td>
                </tr>
        </thead>
        <tbody> 
     <%foreach ( Dominio.Producto item in lista)
          {%>
                <tr> 
                <td><a href="Editar.aspx?id=<%= item.ID %>&evento=editar" Onclick="modificar" > <i class="far fa-edit"></i></a></td>
                <td><a href="Eliminar.aspx?id=<%= item.ID %>&evento=eliminar" Onclick="modificar" > <i class="fas fa-trash-alt"></i></a></td>
                <td><p> <%= item.Nombre %></p></td> 
                <td><p> <%= item.Descripcion %></p></td>
                <td><p><%=item.Marcas.Nombre %></p></td>
                <td><p> <%= item.Categorias.Nombre %></p></td>
                <td><p> <%= item.Talle.Nombre %></p></td>
                <td><p> <%= item.Color.Nombre %></p></td>
                <td><p> <%= item.Color_2.Nombre %></p></td>
                <td><p> <%= item.Sexo.Nombre %></p></td>
                <td><p> <%= item.Imagen_principal %></p></td>
                <td><p> <%= item.Imagen_2 %></p></td>
                <td><p> <%= item.Imagen_3 %></p></td>
                <td><p> <%= item.Precio.ToString("0.00") %></p></td> 
                <td><p> <%= item.Precio_prom.ToString("0.00") %></p></td>
                <td><p> <%= item.Stock %></p></td>
                <td><p> <%= item.Ancho %></p></td>
                <td><p> <%= item.Largo %></p></td>
                <td><p> <%= item.Estrella %></p></td>
                <td><p> <%= item.Nuevo %></p></td>
                <td><p> <%= item.Garage %></p></td>
                </tr>

       <%  } %>
            </tbody>
    </table>


      
      </form>
</asp:Content>

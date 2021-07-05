<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Modificar.aspx.cs" Inherits="TPC_Laurentino_Srebernich.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <form runat="server">
    <h1>Productos</h1> 
    <table class="table table-success table-striped"> 
        <tr> 
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
     <%foreach ( Dominio.Producto item in lista)
          {%>
                <tr> 
                <td contenteditable='true'><p> <%= item.Nombre %></p></td> 
                <td contenteditable='true'><p> <%= item.Descripcion %></p></td>
                <td contenteditable='true'>
                      
               <asp:DropDownList ID="Desplegable_Marcas" class="form-select"  runat="server"  datatextfield="Id"
                       datavaluefield= "Nombre" > </asp:DropDownList>

                </td>

                <td contenteditable='true'><p> <%= item.Categorias.Nombre %></p></td>
                <td contenteditable='true'><p> <%= item.Talle %></p></td>
                <td contenteditable='true'><p> <%= item.Color.Nombre %></p></td>
                <td contenteditable='true'><p> <%= item.Color_2.Nombre %></p></td>
                <td contenteditable='true'><p> <%= item.Sexo.Nombre %></p></td>
                <td contenteditable='true'><p> <%= item.Imagen_principal %></p></td>
                <td contenteditable='true'><p> <%= item.Imagen_2 %></p></td>
                <td contenteditable='true'><p> <%= item.Imagen_3 %></p></td>
                <td contenteditable='true'><p> <%= item.Precio.ToString("0.00") %></p></td> 
                <td contenteditable='true'><p> <%= item.Precio_prom.ToString("0.00") %></p></td>
                <td contenteditable='true'><p> <%= item.Stock %></p></td>
                <td contenteditable='true'><p> <%= item.Ancho %></p></td>
                <td contenteditable='true'><p> <%= item.Largo %></p></td>
                <td contenteditable='true'><p> <%= item.Estrella %></p></td>
                <td contenteditable='true'><p> <%= item.Nuevo %></p></td>
                <td contenteditable='true'><p> <%= item.Garage %></p></td>
                </tr>

       <%  } %>
    </table>
      </form>
</asp:Content>

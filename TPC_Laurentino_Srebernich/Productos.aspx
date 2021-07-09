<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="TPC_Laurentino_Srebernich.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <table class="table table-success table-striped" id="tabla_modificar" style="width:100%" > 
       <thead> 
        <tr>
             <td><p>Editar</p></td>
                <td><p>Eliminar</p></td>
              </thead>
        <tbody>
            <td> <p> Productos</p>
                <asp:label for="Nombre" class="form-label" runat="server">Categorias </asp:label>

                <asp:CheckBoxList ID="Checkbox_categorias" runat="server" datatextfield="Id"
                  datavaluefield="Nombre"> </asp:CheckBoxList>




            </td>
            <td>
     <div class="container">
        <div class="row">
   <%foreach (Dominio.Producto item in listado)
          {%>

            <%if (filtro==null)
                { %>
                
               <div class="col">
                  <div class="card" style="width: 18rem;">
                      <img src="<% = item.Imagen_principal %>"" class="card-img-top" alt="Imagen no disponible" onerror="this.src='./ind.jpeg';"/>
                      <div class ="card-body">
                          <h5 class ="card-title"> <%= item.Nombre %></h5>
                          <%if (item.Precio_prom > 0)
                              { %>
                                <p class="card-text"><del><%= item.Precio.ToString("0.00") %></del></p>
                                <p class="card-text"><%= item.Precio_prom.ToString("0.00") %></p>
                          <%}
                              else
                              {%>
                                <p class="card-text"><%= item.Precio.ToString("0.00") %></p>
                          <%} %>
                          <a href="Detalle.aspx?id=<%=item.ID %>" class="btn btn-primary">Ver detalle</a>
                      </div>
                  </div>
              </div>  
                
                
                
                
                
                
               <%  } %>


            <%else
                { %>
                     <%if (item.Categorias.ID==id)
                         { %>
                    
                          <div class="col">
                              <div class="card" style="width: 18rem;">
                                  <img src="<% = item.Imagen_principal %>"" class="card-img-top" alt="Imagen no disponible" onerror="this.src='./ind.jpeg';"/>
                                  <div class ="card-body">
                                      <h5 class ="card-title"> <%= item.Nombre %></h5>
                                      <%if (item.Precio_prom > 0)
                                          { %>
                                            <p class="card-text"><del><%= item.Precio.ToString("0.00") %></del></p>
                                            <p class="card-text"><%= item.Precio_prom.ToString("0.00") %></p>
                                      <%}
                                          else
                                          {%>
                                            <p class="card-text"><%= item.Precio.ToString("0.00") %></p>
                                      <%} %>
                                      <a href="Detalle.aspx?id=<%=item.ID %>" class="btn btn-primary">Ver detalle</a>
                                  </div>
                              </div>
                          </div>  
                      <%  } %>
          <%  } %>
  <%  } %>
        </div>
    </div>

 </td>
 </tbody>
    </table>
















</asp:Content>

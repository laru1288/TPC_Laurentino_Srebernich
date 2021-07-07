<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GarageSale.aspx.cs" Inherits="TPC_Laurentino_Srebernich.GarageSale" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
         <div class="container">
        <div class="row">
            <%foreach ( Dominio.Producto item in lista)
                {%>
                <%if (item.Garage==true)
                    {%>
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
        </div>
    </div>


</asp:Content>

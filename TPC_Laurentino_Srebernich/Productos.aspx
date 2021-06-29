<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="TPC_Laurentino_Srebernich.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="container">
        <div class="row">
            <%foreach ( Dominio.Producto item in lista)
                {%>
              <div class="col">
                  <div class="card" style="width: 18rem;">
                      <img src="<% = item.Imagen_principal %>"" class="card-img-top" alt="Imagen no disponible" onerror="this.src='./ind.jpeg';"/>
                      <div class ="card-body">
                          <h5 class ="card-title"> <%= item.Nombre %></h5>
                          <p class="card-text"><%= item.Precio.ToString("0.00") %></p>
                          <a href="Detalleproducto.aspx?id=<%=item.ID %>" class="btn btn-primary">Ver detalle</a>
                      </div>
                  </div>
              </div>             
           <%  } %>
        </div>
    </div>


















</asp:Content>

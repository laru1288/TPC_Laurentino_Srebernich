<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPC_Laurentino_Srebernich._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <h1 style="font-family:Edo; text-align:center;" >Outfit Urquiza</h1>
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="\Banner\banner.JPG" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="\Banner\envio.png" class="d-block w-100"  alt="...">
    </div>
    <div class="carousel-item">
      <img src="\Banner\pago2.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<!--Categorias -->
    <div class="categorias">
        <div class="small-container">
            <h2 class="title">Categorias</h2>
             <div class="rowcategorias">
            <div class="col-3">
                <img src=".\Imagenes\pantalon_deportiva_nike2.jpeg" />
            </div>
            <div class="col-3">
                <img src=".\Imagenes\Conjunto_bando_ck_less.jpeg" />
            </div>
            <div class="col-3">
                <img src=".\Imagenes\Campera_algodon_pink_love.jpeg" />
            </div>
        </div>
        </div>       
    </div>
<!--Productos estrella -->
<div class="small-container">
    <h2 class="title">Productos</h2>
    <div class="rowproductosestrella">
       
             <%foreach ( Dominio.Producto item in lista)
                {%>
                <%if (item.Estrella==true)
                    {%>
                        
                <div class="card-producto"> 
                      <img src="<% = item.Imagen_principal %>"" class="card-img-top" alt="Imagen no disponible" onerror="this.src='./ind.jpeg';"/>
                     
                          <h4 class ="card-title"> <%= item.Nombre %></h4>                       
                                <p class="card-text"><%= item.Precio.ToString("0.00") %></p>                       
                          <a href="Detalle.aspx?id=<%=item.ID %>" class="btn btn-primary">Ver detalle</a>
                  </div>    
                 
              
               <%  } %>
           <%  } %>
       
    </div>
</div>

    <!--Promociones -->
<div class="small-container">
  <%if (titulo) {%>
            <h2 class="title">Promociones</h2>                                  
 <%  } %> 
     <div class="rowproductosestrella">
      <%foreach ( Dominio.Producto item in lista)
                {%>
                <%if (item.Garage==true)
                    {%>                       
             
           <div class="card-producto"> 
                      <img src="<% = item.Imagen_principal %>"" class="card-img-top" alt="Imagen no disponible" onerror="this.src='./ind.jpeg';"/>
                     
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
               <%  } %>
           <%  } %>


</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="TPC_Laurentino_Srebernich.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h2 class="title">Productos</h2>

    <div class="small-container-productos">
        <div class="containerproductos">
            <div class="navigationproductos">
                <asp:Label for="leyenda" class="title-products" runat="server">Categorias </asp:Label>
                <ul>
                    <li>
                        <a href="Parte_de_arriba.aspx">
                            <span class="titlecatgoria">Parte de arriba</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="titlecatgoria">Parte de abajo</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="titlecatgoria">Ropa Interior</span>
                        </a>
                    </li>

                </ul>
                <div class="form-check">

                    <asp:Label for="leyenda" class="title-products" runat="server">Color </asp:Label>
                    <asp:RadioButtonList RepeatColumns="1" ID="rediobtn" runat="server">
                    </asp:RadioButtonList>

                    <asp:Label for="leyenda" class="title-products" runat="server">Talle </asp:Label>
                    <asp:RadioButtonList RepeatColumns="1" ID="radiotalles" runat="server">
                    </asp:RadioButtonList>

                </div>
            </div>
        </div>







        <div class="rowproductos">
            <%foreach (Dominio.Producto item in listado)
                {%>

            <%if (filtro == null)
                { %>

            <div class="card-productoss">
                <img src="<% = item.Imagen_principal %>"" class="card-img-top" alt="Imagen no disponible" onerror="this.src='./ind.jpeg';"/>

                <h4 class="card-title"><%= item.Nombre %></h4>
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



            <%else
                { %>
            <%if (item.Categorias.ID == id)
                { %>

            <div class="card-producto">
                   <img src="<% = item.Imagen_principal %>"" class="card-img-top" alt="Imagen no disponible" onerror="this.src='./ind.jpeg';"/>

                <h4 class="card-title"><%= item.Nombre %></h4>
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
            <%  } %>
        </div>
    </div>






</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Parte_de_abajo.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Parte_de_abajo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="title">Parte de abajo</h2>

    <div class="small-container-productos">
        <div class="containerproductos">
            <div class="navigationproductos">
                <asp:Label for="leyenda" class="title-products" runat="server">Categorias </asp:Label>
                <ul>
                    <li>
                        <a href="/Productos">
                            <span class="titlecatgoria">Productos</span>
                        </a>
                    </li>
                    <li>
                        <a href="/Parte_de_arriba">
                            <span class="titlecatgoria">Parte de Arriba</span>
                        </a>
                    </li>
                    <li>
                        <a href="/RopaInterior">
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
            <%foreach (Dominio.Producto item in final)
                {%>
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
        </div>
    </div>

</asp:Content>

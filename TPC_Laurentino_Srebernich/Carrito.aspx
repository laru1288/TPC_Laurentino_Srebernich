<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
    <br /><br />
<h1>Mi carrito<i class="fas fa-shopping-cart"></i></h1>


    <%if (carrito == null || carrito.Count() == 0)
        {   %>
                <center>
                     <img src="./carrito_vacio_nuevo.png" alt="Imagen no encontrada"  />
                </center>


    <% }  %>
    <%else
        { %>
    <div class="container mb-4">
        <div class="row">
            <div class="col-12">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <td>Nombre</td>
                                <td></td>
                                <td></td>
                                <td>Cantidad</td>
                                <td></td>
                                <td>Total</td>

                            </tr>
                        </thead>

                        <tbody>

                            <%foreach (Dominio.Carrito item in carrito)
                                { %>

                            <tr>
                                <td>
                                    <p><%= item.Producto.Nombre %></p>
                                </td>
                                <td><a href="Carrito.aspx?id=<%=item.Producto.ID %>&evento=eliminar" onclick="modificar" class="float-left"><i class="fas fa-trash-alt"></i></a></td>
                                <td><a href="Carrito.aspx?id=<%=item.Producto.ID %>&evento=menos" onclick="modificar" cssclass="AlineadoDerecha"><i class="fas fa-minus"></i></a></td>
                                <td>
                                    <p><%= item.Cant %></p>
                                </td>
                                <td><a href="Carrito.aspx?id=<%=item.Producto.ID %>&evento=sumar" onclick="modificar"><i class="fas fa-plus"></i></a></td>
                                <td>
                                    <p><%= item.subtotal.ToString("0.00") %></p>
                                </td>
                            </tr>

                            <%  } %>
                        </tbody>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><strong>Total</strong></td>
                            <td>
                                <asp:Label Text="s" class="h3 py-2" ID="lblTotal" runat="server" />
                            </td>
                        </tr>

                        <tr>                            
                            <td><a href="Productos.aspx" class="btn btn-primary">Agregar mas productos</a></td>
                            <td><asp:Button Text="Vaciar carrito" CssClass="btn btn-primary" ID="Btnvaciar" OnClick="btnvaciar_carrito" runat="server" /></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><asp:Button Text="Iniciar compra" CssClass="btn btn-primary" ID="Bfinalizarcompra" Onclick="Bfinalizarcompra_Click" runat="server" /></td>
                        </tr>

                    </table>
                </div>
            </div>
        </div>
    </div>





    <% }  %>
    
</asp:Content>

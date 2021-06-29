<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br /><br />
    <h1>Mi carrito<i class="fas fa-shopping-cart"></i></h1>


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

                           
                        </tbody>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><strong>Total</strong></td>
                            <td>
                                <asp:Label Text="" class="h3 py-2" ID="lblTotal" runat="server" />
                            </td>
                        </tr>

                        <tr>                            
                            <td><a href="Productos.aspx" class="btn btn-secondary btn-lg">Agregar mas productos</a></td>
                            <td><asp:Button Text="Vaciar carrito"  ID="Btnvaciar"  runat="server" class="btn btn-secondary btn-lg"/></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a href="/" class="btn btn-secondary btn-lg">Finalizar comprar</a></td>
                        </tr>

                    </table>
                </div>
            </div>
        </div>
    </div>





    
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PreCheckout.aspx.cs" Inherits="TPC_Laurentino_Srebernich.PreCheckout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />

    <div class='container-PRECHECKOUT'>
        <div class='window'>
            <div class='order-info'>
                <div class='order-info-content'>
                    <h2 class="TITULO-PRECHECKOUT">Resumen de compra</h2>
                    <div class='line'></div>
                    <%foreach (Dominio.Carrito item in carritofinal)
                        {%>

                    <table class='order-table'>
                        <tbody>
                            <tr>
                                <td>
                                    <img src="<% = item.Producto.Imagen_principal %>" class='full-width'></img>
                                </td>
                                <td>
                                    <br>
                                    <span class='thin'><%=item.Producto.Nombre %></span>
                                    <br>
                                    <%=item.Producto.Descripcion %><br>
                                    <span class='thin small'>Color: <%=item.Producto.Color %>, Talle: <%=item.Producto.Talle %><br>
                                        <br>
                                    </span>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <div class='Precio'>$<%=item.subtotal %></div>
                                </td>
                            </tr>
                        </tbody>

                    </table>
                    <%  } %>

                    <div class='line'></div>

                    <div class='line'></div>

                    <div class='line'></div>
                    <div class='total'>
                        <span style='float: left;'>TOTAL
                        </span>
                        <span style='float: right; text-align: right;'>

                            <asp:Label Text="s" class="h3 py-2" ID="lblTotal" runat="server" />
                        </span>
                    </div>
                </div>
            </div>
            <div class='credit-info'>
                <div class='credit-info-content'>

                    <img src=".\Imagenes\logo.jpg" width="80" height="80" class='credit-card-image' id='credit-card-image'></img>
                    <br />

                    <div class="centrar">
                        <h2 class="TITULO-PRECHECKOUT">Nro de Documento *</h2>
                        <asp:TextBox ID="TextBoxdni" Type="text" Class="form-control" placeholder="Documento" required="true" runat="server"></asp:TextBox>



                        <h2 class="TITULO-PRECHECKOUT">Metodo de pago *</h2>
                        <div class="form-check">
                            <input id="Tipo1" name="paymethod" type="radio" runat="server" class="form-check-input" style="font-size: medium" required />
                            <label for="transferencia">Transferencia</label>

                        </div>

                        <div class="form-check">
                            <input id="Tipo2" name="paymethod" type="radio" runat="server" class="form-check-input" style="font-size: medium" required />
                            <label for="Mercadopago">Mercado pago</label>
                            
                        </div>

                        <div class="form-check">
                           <input id="Tipo3" name="paymethod" type="radio" class="form-check-input" runat="server" style="font-size: medium" required />
                            <label for="acuerdo">Acuerdo con el vendedor</label>
                            
                        </div>

                        <br />


                        <h2 class="TITULO-PRECHECKOUT">Metodo de Envio *</h2>
                        <div class="form-check">
                            <input id="enviomercadoenvios" name="sendmethod" type="radio" runat="server" class="form-check-input" style="font-size: medium" required />
                            <label for="transferencia">Mercado Envio</label>
                        </div>

                        <div class="form-check">
                            <input id="Retirolocal" name="sendmethod" type="radio" runat="server" class="form-check-input" style="font-size: medium" required />
                            <label for="Mercadopago">Retiro en el local</label>
                        </div>

                        <div class="form-check">
                            <input id="Motomensajeria" name="sendmethod" type="radio" runat="server" class="form-check-input" style="font-size: medium" required />
                            <label for="acuerdo">Acuerdo con el vendedor para una moto (solo valido en CABA)</label>
                        </div>

                        <asp:Button type="submit" Text="Continuar" ID="B_aceptar" class='pay-btn' OnClick="B_aceptar_Click" runat="server" />
                    </div>
                </div>

            </div>
        </div>
    </div>









    <!-- VIEJOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  -->

</asp:Content>


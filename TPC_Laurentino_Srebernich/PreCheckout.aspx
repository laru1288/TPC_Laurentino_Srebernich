<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PreCheckout.aspx.cs" Inherits="TPC_Laurentino_Srebernich.PreCheckout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div class="container-checkout">
        <div class="py-5 text-center">
            <img class="mb-4 d-block mx-auto" src=".\Imagenes\logo.jpg" width="72" height="72" />
            <h2 class="titulo-checkout">Datos de contacto</h2>
            <p class="lead">Rellene el formulario para realizar la compra</p>
        </div>
    </div>

    <div class="contact-checkout">

        <!-- row -->
        <h4 class="mb-3">Completar</h4>
        <div class="row">
            <div class="col-sm-12 col-md-12">

                 <div class="col-sm-12 col-md-2">
                <!-- Documento -->
                <div class="form-group">
                    <label for="txtNroDocumento">Nro de Documento *</label>
                    <asp:TextBox ID="TextDocumento" Type="text" Class="form-control" placeholder="Documento" required="true" runat="server" ></asp:TextBox>
                    <div class="invalid-feedback">Documento requerido</div>
                </div>
            </div>



    <h4 class="mb-3">Metodo de pago</h4>
    <div class="form-check">
        <input id="trasnferencia" name="paymethod" type="radio" class="form-check-input" style="font-size: medium" required />
        <label for="transferencia">Transferencia</label>
    </div>

    <div class="form-check">
        <input id="Mercadopago" name="paymethod" type="radio" class="form-check-input" style="font-size: medium" required />
        <label for="Mercadopago">Mercado pago</label>
    </div>

    <div class="form-check">
        <input id="acuerdo" name="paymethod" type="radio" class="form-check-input" style="font-size: medium" required />
        <label for="acuerdo">Acuerdo con el vendedor</label>
    </div>

    <br />
    <br />
    <asp:Button type="submit" Text="Aceptar" ID="B_aceptar" class="btn btn-primary" OnClick="B_aceptar_Click" runat="server" />
       















    <br />
    <br />
    <br />
</asp:Content>


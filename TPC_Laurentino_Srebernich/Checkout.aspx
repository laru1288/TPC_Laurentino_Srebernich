<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Checkout" %>

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

              

                <!-- Mail -->
                <div class="form-group">
                    <label for="txtMail">Mail *</label>
                    <asp:TextBox ID="TextMail" Type="text" Class="form-control" placeholder="xxxxxx@gmail.com" required="true" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Mail requerido</div>
                </div>
            </div>
            <div class="col-sm-12 col-md-4">
                <!-- Apellido -->
                <div class="form-group">
                    <label for="txtApellido">Apellido *</label>
                    <asp:TextBox ID="TextApellido" Type="text" Class="form-control" placeholder="Apellido" required="true" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Apellido requerido</div>
                </div>
            </div>
            <div class="col-sm-12 col-md-4">
                <!-- Nombre -->
                <div class="form-group">
                    <label for="txtNombre">Nombre *</label>
                    <asp:TextBox ID="TextNombre" Type="text" Class="form-control" placeholder="Nombre" required="true" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Nombre requerido</div>
                </div>
            </div>


            <div class="col-sm-12 col-md-2">
                <!-- Telefono -->
                <div class="form-group">
                    <label for="txtTelefono">Telefono *</label>
                    <asp:TextBox ID="TextTelefono" Type="text" Class="form-control" placeholder="Telefono" required="true" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Telefono requerido</div>
                </div>
            </div>
            <div class="col-sm-12 col-md-4">
                <!--Direccion -->
                <div class="form-group">
                    <label for="txtDireccion">Direccion *</label>
                    <asp:TextBox ID="TextDireccion" Type="text" Class="form-control" placeholder="Direccion" required="true" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Apellido requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-4">
                <!-- Numero -->
                <div class="form-group">
                    <label for="txtNumero">Numero *</label>
                    <asp:TextBox ID="TextNumero" Type="text" Class="form-control" placeholder="Numero" required="true" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Numero requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-4">
                <!-- Piso -->
                <div class="form-group">
                    <label for="txtPiso">Piso *</label>
                    <asp:TextBox ID="TextPiso" Type="text" Class="form-control" placeholder="Piso" required="true" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Piso requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-12">
                <!-- Entrecalles -->
                <div class="form-group">
                    <label for="txtEntrecalles">Entre que calles esta? (opcional)</label>
                    <asp:TextBox ID="TextEntrecalles" Type="text" Class="form-control" placeholder="Entrecalles" required="true" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Entrecalles requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-4">
                <!-- Provincia -->
                <div class="form-group">
                    <label for="txtProvincia">Provincia *</label>
                    <asp:TextBox ID="TextProvincia" Type="text" Class="form-control" placeholder="Provincia" required="true" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Provincia requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-4">
                <!-- Localidad -->
                <div class="form-group">
                    <label for="txtLocalidad">Localidad *</label>
                    <asp:TextBox ID="TextLocalidad" Type="text" Class="form-control" placeholder="Localidad" required="true" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Localidad requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-4">
                <!-- CodigoPostal -->
                <div class="form-group">
                    <label for="txtCodigoPostal">Codigo Postal *</label>
                    <asp:TextBox ID="TextCodigoPostal" Type="text" Class="form-control" placeholder="CodigoPostal" required="true" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">CodigoPostal requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-12">
                <!-- Observaciones -->
                <div class="form-group">
                    <label for="txtObservaciones">Observaciones (opcional)</label>
                    <asp:TextBox ID="TextObservaciones" Type="text" Class="form-control" placeholder="Observaciones" required="true" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Observaciones requerido</div>
                </div>
            </div>
        </div>
    </div>



    <br />
    <br />
    <asp:Button type="submit" Text="Aceptar" ID="B_aceptar" class="btn btn-primary" OnClick="B_aceptar_Click" runat="server" />







    <br />
    <br />
    <br />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Editar.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Editar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
      <div class="container-checkout">
        <div class="py-5 text-center">
            <img class="mb-4 d-block mx-auto" src=".\Imagenes\logo.jpg" width="72" height="72" />
            <h2 class="titulo-checkout">Modificar Producto</h2>
            <p class="lead">Modifique los campos</p>
        </div>
    </div>

     <div class="contact-checkout">

        <!-- row -->
        <h4 class="mb-3">Completar</h4>
        <div class="row">
            <div class="col-sm-12 col-md-4">
                <!-- Nombre -->
                <div class="form-group">
                    <label for="txtMail">Nombre *</label>
                   <asp:TextBox ID="textNombre" class="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Nombre requerido</div>
                </div>
            </div>
            <div class="col-sm-12 col-md-4">
                <!-- Descripcion -->
                <div class="form-group">
                    <label for="txtApellido">Descripcion *</label>
                 <asp:TextBox ID="TextDescripcion" class="form-control" placeholder="Descripcion" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Descripcion requerido</div>
                </div>
            </div>
            <div class="col-sm-12 col-md-4">
                <!-- Imagen principal -->
                <div class="form-group">
                    <label for="txtNombre">Imagen principal *</label>
                    <asp:TextBox ID="TextImagenprincipal" class="form-control" placeholder="Imagen principal" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Imagen principal requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-4">
                <!-- Imagen secundaria -->
                <div class="form-group">
                    <label for="txtNroDocumento">Imagen secundaria *</label>
                   <asp:TextBox ID="Textimagen2" class="form-control" placeholder="Imagen secundaria" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Imagen secundaria requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-4">
                <!-- Imagen terciaria -->
                <div class="form-group">
                    <label for="txtTelefono">Imagen terciaria *</label>
                    <asp:TextBox ID="TextImagen3" class="form-control" placeholder="Imagen terciaria" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Imagen terciaria requerido</div>
                </div>
            </div>
            <div class="col-sm-12 col-md-4">
                <!--Stock -->
                <div class="form-group">
                    <label for="txtDireccion">Stock *</label>
                     <asp:TextBox ID="TextStock" class="form-control" placeholder="Stock" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Stock requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-4">
                <!-- Precio -->
                <div class="form-group">
                    <label for="txtNumero">Precio *</label>
                  <asp:TextBox ID="TextPrecio" class="form-control" placeholder="Precio" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Precio requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-4">
                <!-- Precio promo -->
                <div class="form-group">
                    <label for="txtPiso">Precio promo *</label>
                     <asp:TextBox ID="Textpreciopromo" class="form-control" placeholder="Precio promo" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Precio promo requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-2">
                <!-- Ancho -->
                <div class="form-group">
                    <label for="txtEntrecalles">Ancho *</label>
                    <asp:TextBox ID="TextAncho" class="form-control" placeholder="Ancho" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Ancho requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-2">
                <!-- Largo -->
                <div class="form-group">
                    <label for="txtProvincia">Largo *</label>
                    <asp:TextBox ID="TextLargo" class="form-control" placeholder="Largo" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Largo requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-2">
                <!-- Seleccionar -->
                <div class="form-group">
                    <label for="txtLocalidad">Seleccionar *</label>
                      <div class="form-check">
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                            <asp:Label for="Estrella" class="form-check-label" runat="server">Estrella </asp:Label>
                        </div>
                        <div class="form-check">
                            <asp:CheckBox ID="CheckBox2" runat="server" />
                            <asp:Label for="New" class="form-check-label" runat="server">New </asp:Label>
                        </div>
                        <div class="form-check">
                            <asp:CheckBox ID="CheckBox3" runat="server" />
                            <asp:Label for="Garage" class="form-check-label" runat="server">Garage </asp:Label>
                        </div>
                    <div class="invalid-feedback">Seleccionar requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-2">
                <!-- Categoria -->
                <div class="form-group">
                    <label for="txtCodigoPostal">Categoria *</label>
                      <asp:DropDownList ID="D_Categoria" runat="server" class="form-select" DataTextField="Id"
                          DataValueField="Nombre">
                          </asp:DropDownList>
                    <div class="invalid-feedback">Categoria requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-2">
                <!-- Marcas -->
                <div class="form-group">
                    <label for="txtObservaciones">Marcas *</label>
                    <asp:DropDownList ID="D_Marcas" runat="server" class="form-select" DataTextField="Id"
                        DataValueField="Nombre">
                    </asp:DropDownList>
                    <div class="invalid-feedback">Marcas requerido</div>
                </div>
            </div>

              <div class="col-sm-12 col-md-2">
                <!-- Talle -->
                <div class="form-group">
                    <label for="txtObservaciones">Talle *</label>
                      <asp:DropDownList ID="D_Talle" runat="server" class="form-select" DataTextField="Id"
                            DataValueField="Nombre">
                        </asp:DropDownList>
                    <div class="invalid-feedback">Talle requerido</div>
                </div>
            </div>

              <div class="col-sm-12 col-md-2">
                <!-- Color1 -->
                <div class="form-group">
                    <label for="txtObservaciones">Color1 *</label>
                     <asp:DropDownList ID="D_Color1" runat="server" class="form-select" DataTextField="Id"
                            DataValueField="Nombre">
                        </asp:DropDownList>
                    <div class="invalid-feedback">Color1 requerido</div>
                </div>
            </div>

              <div class="col-sm-12 col-md-2">
                <!-- Color2 -->
                <div class="form-group">
                    <label for="txtObservaciones">Color2 *</label>
                     <asp:DropDownList ID="D_Color2" runat="server" class="form-select" DataTextField="Id"
                        DataValueField="Nombre">
                    </asp:DropDownList>
                    <div class="invalid-feedback">Color2 requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-2">
                <!-- Sexo -->
                <div class="form-group">
                    <label for="txtObservaciones">Sexo *</label>
                   <asp:DropDownList ID="D_Sexo" runat="server" class="form-select" DataTextField="Id"
                        DataValueField="Nombre">
                    </asp:DropDownList>
                    <div class="invalid-feedback">Color2 requerido</div>
                </div>
            </div>

        </div>


    </div>
  
    <br />
    <br />
    <asp:Button type="submit" Text="Agregar" ID="B_modificar" class="btn btn-primary" runat="server" Style="background-color:#7DB6AD" OnClick="B_modificar_Click" />
        <br />
         <br />
         <br />
        <a href="/Pagina2LoguinAdmin" Style="background-color:#7DB6AD" class="btn btn-primary" >Salir</a>
      




 
</asp:Content>

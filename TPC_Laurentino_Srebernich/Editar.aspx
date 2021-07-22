<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Editar.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Editar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script>
        function validar() {
            var Nombre = document.getElementById("<%=textNombre.ClientID%>").value;
            var Descripcion = document.getElementById("<%=TextDescripcion.ClientID%>").value;
            var Stock = document.getElementById("<%=TextStock.ClientID%>").value;
            var Precio = document.getElementById("<%=TextPrecio.ClientID%>").value;
            var Ancho = document.getElementById("<%=TextAncho.ClientID%>").value;
            var Largo = document.getElementById("<%=TextLargo.ClientID%>").value;
            var valido = true;

            if (Nombre === "") {
                $("#<%=textNombre.ClientID%>").removeClass("is-valid");
                $("#<%=textNombre.ClientID%>").addClass("is-invalid");
                valido = false;
            } else {
                $("#<%=textNombre.ClientID%>").removeClass("is-invalid");
                $("#<%=textNombre.ClientID%>").addClass("is-valid");
            }

            if (Descripcion === "") {
                $("#<%=TextDescripcion.ClientID%>").removeClass("is-valid");
                  $("#<%=TextDescripcion.ClientID%>").addClass("is-invalid");
                valido = false;
            } else {
                $("#<%=TextDescripcion.ClientID%>").removeClass("is-invalid");
                  $("#<%=TextDescripcion.ClientID%>").addClass("is-valid");
            }

            if (Stock === "") {
                $("#<%=TextStock.ClientID%>").removeClass("is-valid");
                  $("#<%=TextStock.ClientID%>").addClass("is-invalid");
                valido = false;
            } else {
                $("#<%=TextStock.ClientID%>").removeClass("is-invalid");
                  $("#<%=TextStock.ClientID%>").addClass("is-valid");
            }

            if (Precio === "") {
                $("#<%=TextPrecio.ClientID%>").removeClass("is-valid");
                   $("#<%=TextPrecio.ClientID%>").addClass("is-invalid");
                valido = false;
            } else {
                $("#<%=TextPrecio.ClientID%>").removeClass("is-invalid");
                   $("#<%=TextPrecio.ClientID%>").addClass("is-valid");
               }

            if (Ancho === "") {
                $("#<%=TextAncho.ClientID%>").removeClass("is-valid");
                   $("#<%=TextAncho.ClientID%>").addClass("is-invalid");
                valido = false;
            } else {
                $("#<%=TextAncho.ClientID%>").removeClass("is-invalid");
                   $("#<%=TextAncho.ClientID%>").addClass("is-valid");
            }

            if (Largo === "") {
                $("#<%=TextLargo.ClientID%>").removeClass("is-valid");
                    $("#<%=TextLargo.ClientID%>").addClass("is-invalid");
                valido = false;
            } else {
                $("#<%=TextLargo.ClientID%>").removeClass("is-invalid");
                    $("#<%=TextLargo.ClientID%>").addClass("is-valid");
                }

            if (!valido) {
                return false;
            }
            return true;
        }
    </script>
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
                   <asp:TextBox ID="textNombre" class="form-control" ClientIDMode="Static" placeholder="Nombre" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Nombre requerido</div>
                </div>
            </div>
            <div class="col-sm-12 col-md-4">
                <!-- Descripcion -->
                <div class="form-group">
                    <label for="txtApellido">Descripcion *</label>
                 <asp:TextBox ID="TextDescripcion" class="form-control" ClientIDMode="Static" placeholder="Descripcion" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Descripcion requerido</div>
                </div>
            </div>
            <div class="col-sm-12 col-md-4">
                <!-- Imagen principal -->
                <div class="form-group">
                    <label for="txtNombre">Imagen principal *</label>
                    <asp:TextBox ID="TextImagenprincipal" class="form-control" ClientIDMode="Static" placeholder="Imagen principal" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Imagen principal requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-4">
                <!-- Imagen secundaria -->
                <div class="form-group">
                    <label for="txtNroDocumento">Imagen secundaria *</label>
                   <asp:TextBox ID="Textimagen2" class="form-control" ClientIDMode="Static" placeholder="Imagen secundaria" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Imagen secundaria requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-4">
                <!-- Imagen terciaria -->
                <div class="form-group">
                    <label for="txtTelefono">Imagen terciaria *</label>
                    <asp:TextBox ID="TextImagen3" class="form-control" ClientIDMode="Static" placeholder="Imagen terciaria" runat="server"></asp:TextBox>
                    <div class="invalid-feedback">Imagen terciaria requerido</div>
                </div>
            </div>
            <div class="col-sm-12 col-md-4">
                <!--Stock -->
                <div class="form-group">
                    <label for="txtDireccion">Stock *</label>
                     <asp:TextBox ID="TextStock" class="form-control" ClientIDMode="Static" placeholder="Stock" runat="server"></asp:TextBox>
                     <asp:RangeValidator ErrorMessage="Solo podes ingresar numeros" ControlToValidate="TextStock" runat="server"></asp:RangeValidator>
                    <div class="invalid-feedback">Stock requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-4">
                <!-- Precio -->
                <div class="form-group">
                    <label for="txtNumero">Precio *</label>
                  <asp:TextBox ID="TextPrecio" class="form-control" ClientIDMode="Static" placeholder="Precio" runat="server"></asp:TextBox>
                      <asp:RangeValidator ErrorMessage="Solo podes ingresar numeros" ControlToValidate="TextPrecio" runat="server"></asp:RangeValidator>
                    <div class="invalid-feedback">Precio requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-4">
                <!-- Precio promo -->
                <div class="form-group">
                    <label for="txtPiso">Precio promo *</label>
                     <asp:TextBox ID="Textpreciopromo" class="form-control" ClientIDMode="Static" placeholder="Precio promo" runat="server"></asp:TextBox>
                      <asp:RangeValidator ErrorMessage="Solo podes ingresar numeros" ControlToValidate="Textpreciopromo" runat="server"></asp:RangeValidator>
                    <div class="invalid-feedback">Precio promo requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-2">
                <!-- Ancho -->
                <div class="form-group">
                    <label for="txtEntrecalles">Ancho *</label>
                    <asp:TextBox ID="TextAncho" class="form-control" ClientIDMode="Static" placeholder="Ancho" runat="server"></asp:TextBox>
                     <asp:RangeValidator ErrorMessage="Solo podes ingresar numeros" ControlToValidate="TextAncho" runat="server"></asp:RangeValidator>
                    <div class="invalid-feedback">Ancho requerido</div>
                </div>
            </div>

            <div class="col-sm-12 col-md-2">
                <!-- Largo -->
                <div class="form-group">
                    <label for="txtProvincia">Largo *</label>
                    <asp:TextBox ID="TextLargo" class="form-control" ClientIDMode="Static" placeholder="Largo" runat="server"></asp:TextBox>
                     <asp:RangeValidator ErrorMessage="Solo podes ingresar numeros" ControlToValidate="TextLargo" runat="server"></asp:RangeValidator>
                    <div class="invalid-feedback">Largo requerido</div>
                </div>
            </div>

    <div class="col-sm-12 col-md-2">
                <!-- Seleccionar -->
                <div class="form-group">
                    <label for="txtLocalidad">Seleccionar *</label>

                    <div class="form-check">
                            <input id="TipoCheckBox1" name="tipo" type="radio" runat="server" class="form-check-input" style="font-size: medium" required />
                            <label for="Estrella">Estrella</label>

                        </div>

                        <div class="form-check">
                            <input id="TipoCheckBox2" name="tipo" type="radio" runat="server" class="form-check-input" style="font-size: medium" required />
                            <label for="New">New</label>
                            
                        </div>

                        <div class="form-check">
                           <input id="TipoCheckBox3" name="tipo" type="radio" class="form-check-input" runat="server" style="font-size: medium" required />
                            <label for="acuGarageerdo">Garage</label>
                            
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
    <asp:Button type="submit" Text="Agregar" ID="B_modificar" OnClientClick="return validar()" class="btn btn-primary" runat="server" Style="background-color:#7DB6AD" OnClick="B_modificar_Click" />
        <br />
         <br />
         <br />
        <a href="/Pagina2LoguinAdmin" Style="background-color:#7DB6AD" class="btn btn-primary" >Salir</a>
      




 
</asp:Content>

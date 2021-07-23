<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Detalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <script>
        function validar() {
            var canbtidad = document.getElementById("<%=cantidadelegida.ClientID%>").value;
           var valido = true;

            if (canbtidad === "") {
                $("#<%=cantidadelegida.ClientID%>").removeClass("is-valid");
                $("#<%=cantidadelegida.ClientID%>").addClass("is-invalid");
                valido = false;
            } else {
                $("#<%=cantidadelegida.ClientID%>").removeClass("is-invalid");
                $("#<%=cantidadelegida.ClientID%>").addClass("is-valid");
            }

          

            if (!valido) {
                return false;
            }
            return true;
        }
     </script>   
    <br />

    <section class="bg-light">
        <div class="container pb-5">
            <div class="row">
                <div class="col-lg-5 mt-5">
                    <div class="card mb-3">
                        <asp:Image class="card-img img-fluid" alt="Imagen no disponible" onerror="this.src='./ind.jpeg';" ID="imagen" runat="server" />
                    </div>
                    <div class="row">
                    </div>
                </div>

                <div class="col-lg-7 mt-5">
                    <div class="card">
                        <div class="card-body">
                            <asp:Label Text="a" class="h2" ID="lblnombre" runat="server" />
                            <br />
                            <%if (promo)
                                { %>
                            <del><asp:Label Text="s" class="h3 py-2" runat="server"  ID="lblprecioold"  /></del>
                            <br />
                            <asp:Label Text="s" class="h3 py-2" ID="lblprecioprom" runat="server" />
                            <%}
                            else
                            {%>
                            <asp:Label Text="s" class="h3 py-2" ID="lblprecio" runat="server" />
                            <br />

                            <%} %>

      
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <h6>Marca:</h6>
                                </li>
                                <li class="list-inline-item">
                                    <asp:Label Text="s" class="text-muted" ID="lblmarca" runat="server" />
                                </li>
                            </ul>

                            <h6>Descripcion:</h6>
                            <asp:Label Text="s" ID="lbldescrip" runat="server" />

                          
                                

                              <h6>Specification:</h6>
                            <ul class="list-unstyled pb-3">
                                <li>Lorem ipsum dolor sit</li>
                                <li>Amet, consectetur</li>
                                <li>Adipiscing elit,set</li>
                                <li>Duis aute irure</li>
                                <li>Ut enim ad minim</li>
                                <li>Dolore magna aliqua</li>
                                <li>Excepteur sint</li>
                            </ul>

                            <input type="hidden" name="product-title" value="Activewear">
                                   <div class="row">
                                    <div class="col-auto">
                                        <ul class="list-inline pb-3">
                                            <li class="list-inline-item">Talle :
                                                <input type="hidden" name="product-size" id="product-size" value="S">
                                            </li>
                                            <li class="list-inline-item"><span class="btn btn-success btn-size" style="background-color:#7DB6AD" id="lbltalle" runat="server"></span></li>
                                             </ul>
                                    </div>
                                   
                                </div>   
                                     <div class="col-auto">
                                        <ul class="list-inline pb-3">
                                            <li class="list-inline-item text-right">Cantidad
                                                <input type="hidden" name="product-quanity" id="product-quanity" value="1">
                                            </li>
                                            <asp:TextBox ID="cantidadelegida" text="1" ClientIDMode="Static" class="form-control" placeholder="Cantidad" runat="server"></asp:TextBox>
                                               
                                        </ul>
                                    </div>
                            <div class="row pb-3">

                                    <div class="col d-grid">
                                    <asp:Button type="submit" ID="Comprar"  class="btn btn-primary btn-lg" name="submit" OnClientClick="return validar()" style="background-color:#7DB6AD" text="Comprar" runat="server" OnClick="Comprar_Click"/>
                                          </div>
                                    <div class="col d-grid">
                                       
                                     <asp:button type="submit" ID="Agregar" class="btn btn-primary btn-lg" name="submit" OnClientClick="return validar()" style="background-color:#7DB6AD" text="Agregar al carrito" OnClick="Agregar_Click" runat="server"></asp:button>
                                    
                                    </div>
                                </div>
                           

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

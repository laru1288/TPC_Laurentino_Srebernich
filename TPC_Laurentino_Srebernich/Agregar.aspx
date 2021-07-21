<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Agregar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />

    <% if (IsPostBack)
        { %>
    <h2>Producto cargado con exito!</h2>
    <a href="/Pagina2LoguinAdmin" class="btn btn-primary">Salir</a>
    <%} %>
    <fieldset enable="true">
        <asp:Label for="leyenda" class="form-label" runat="server">Agregar nuevo Producto  </asp:Label>

        <div class="mb-3">
            <asp:Label for="Nombre" class="form-label" runat="server">Nombre  </asp:Label>
            <asp:TextBox ID="textNombre" class="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
        </div>
        <div class="mb-3">
            <asp:Label for="Descripcion" class="form-label" runat="server">Descripcion  </asp:Label>
            <asp:TextBox ID="TextDescripcion" class="form-control" placeholder="Descripcion" runat="server"></asp:TextBox>
        </div>
        <div class="mb-3">
            <asp:Label for="Imagen principal" class="form-label" runat="server">Imagen principal  </asp:Label>
            <asp:TextBox ID="TextImagenprincipal" class="form-control" placeholder="Imagen principal" runat="server"></asp:TextBox>
        </div>
        <div class="mb-3">
            <asp:Label for="Imagen 2" class="form-label" runat="server">Imagen secundaria </asp:Label>
            <asp:TextBox ID="Textimagen2" class="form-control" placeholder="Imagen secundaria" runat="server"></asp:TextBox>
        </div>
        <div class="mb-3">
            <asp:Label for="Imagen 3" class="form-label" runat="server">Imagen terciaria </asp:Label>
            <asp:TextBox ID="TextImagen3" class="form-control" placeholder="Imagen terciaria" runat="server"></asp:TextBox>
        </div>
        <div class="mb-3">
            <asp:Label for="Stock" class="form-label" runat="server">Stock </asp:Label>
            <asp:TextBox ID="TextStock" class="form-control" placeholder="Stock" runat="server"></asp:TextBox>
        </div>
        <div class="mb-3">
            <asp:Label for="Precio" class="form-label" runat="server">Precio </asp:Label>
            <asp:TextBox ID="TextPrecio" class="form-control" placeholder="Precio" runat="server"></asp:TextBox>
        </div>
        <div class="mb-3">
            <asp:Label for="Precio promo" class="form-label" runat="server">Precio promo </asp:Label>
            <asp:TextBox ID="Textpreciopromo" class="form-control" placeholder="Precio promo" runat="server"></asp:TextBox>
        </div>
        <div class="mb-3">
            <asp:Label for="Ancho" class="form-label" runat="server">Ancho </asp:Label>
            <asp:TextBox ID="TextAncho" class="form-control" placeholder="Ancho" runat="server"></asp:TextBox>
        </div>
        <div class="mb-3">
            <asp:Label for="Largo" class="form-label" runat="server">Largo </asp:Label>
            <asp:TextBox ID="TextLargo" class="form-control" placeholder="Largo" runat="server"></asp:TextBox>
        </div>
        <asp:Label for="Selecionar" class="form-check-label" runat="server">Selecionar </asp:Label>
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
        <div class="mb-3">
            <asp:Label for="Nombre" class="form-label" runat="server">Categoria  </asp:Label>
            <asp:DropDownList ID="D_Categoria" runat="server" class="form-select" DataTextField="Id"
                DataValueField="Nombre">
            </asp:DropDownList>
        </div>
        <div class="mb-3">
            <asp:Label for="Nombre" class="form-label" runat="server">Marca  </asp:Label>
            <asp:DropDownList ID="D_Marcas" runat="server" class="form-select" DataTextField="Id"
                DataValueField="Nombre">
            </asp:DropDownList>
        </div>
        <div class="mb-3">
            <asp:Label for="Nombre" class="form-label" runat="server">Talle  </asp:Label>
            <asp:DropDownList ID="D_Talle" runat="server" class="form-select" DataTextField="Id"
                DataValueField="Nombre">
            </asp:DropDownList>
        </div>
        <div class="mb-3">
            <asp:Label for="Nombre" class="form-label" runat="server">Color  </asp:Label>
            <asp:DropDownList ID="D_Color1" runat="server" class="form-select" DataTextField="Id"
                DataValueField="Nombre">
            </asp:DropDownList>
        </div>
        <div class="mb-3">
            <asp:Label for="Nombre" class="form-label" runat="server">Color  secundario </asp:Label>
            <asp:DropDownList ID="D_Color2" runat="server" class="form-select" DataTextField="Id"
                DataValueField="Nombre">
            </asp:DropDownList>
        </div>
        <div class="mb-3">
            <asp:Label for="Nombre" class="form-label" runat="server">Sexo </asp:Label>
            <asp:DropDownList ID="D_Sexo" runat="server" class="form-select" DataTextField="Id"
                DataValueField="Nombre">
            </asp:DropDownList>
        </div>


        <asp:Button type="submit" Text="Agregar" ID="B_agregar" class="btn btn-primary" runat="server" OnClick="Agregar_nuevo" />
        


    </fieldset>




</asp:Content>

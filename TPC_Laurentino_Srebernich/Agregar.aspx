<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Agregar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
    <form>
  <fieldset enable>
    <legend>Agregar nuevo Producto</legend>
    <div class="mb-3">
      <asp:label for="Nombre" class="form-label" runat="server">Nombre  </asp:label>
        <asp:TextBox id="textNombre" class="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
    </div>
   <div class="mb-3">
      <asp:label for="Descripcion" class="form-label" runat="server">Descripcion  </asp:label>
        <asp:TextBox id="TextDescripcion" class="form-control" placeholder="Descripcion" runat="server"></asp:TextBox>
    </div>
    <div class="mb-3">
      <asp:label for="Imagen principal" class="form-label" runat="server">Imagen principal  </asp:label>
        <asp:TextBox id="TextImagenprincipal" class="form-control" placeholder="Imagen principal" runat="server"></asp:TextBox>
    </div>
       <div class="mb-3">
      <asp:label for="Imagen 2" class="form-label" runat="server">Imagen secundaria </asp:label>
        <asp:TextBox id="Textimagen2" class="form-control" placeholder="Imagen secundaria" runat="server"></asp:TextBox>
    </div>
       <div class="mb-3">
      <asp:label for="Imagen 3" class="form-label" runat="server">Imagen terciaria </asp:label>
        <asp:TextBox id="TextImagen3" class="form-control" placeholder="Imagen terciaria" runat="server"></asp:TextBox>
    </div>
      <div class="mb-3">
      <asp:label for="Stock" class="form-label" runat="server">Stock </asp:label>
        <asp:TextBox id="TextStock" class="form-control" placeholder="Stock" runat="server"></asp:TextBox>
    </div>
        <div class="mb-3">
      <asp:label for="Precio" class="form-label" runat="server">Precio </asp:label>
        <asp:TextBox id="TextPrecio" class="form-control" placeholder="Precio" runat="server"></asp:TextBox>
    </div>
         <div class="mb-3">
      <asp:label for="Precio promo" class="form-label" runat="server">Precio promo </asp:label>
        <asp:TextBox id="Textpreciopromo" class="form-control" placeholder="Precio promo" runat="server"></asp:TextBox>
    </div>
     <div class="mb-3">
      <asp:label for="Ancho" class="form-label" runat="server">Ancho </asp:label>
        <asp:TextBox id="TextAncho" class="form-control" placeholder="Ancho" runat="server"></asp:TextBox>
    </div>
     <div class="mb-3">
      <asp:label for="Largo" class="form-label" runat="server">Largo </asp:label>
        <asp:TextBox id="TextLargo" class="form-control" placeholder="Largo" runat="server"></asp:TextBox>
    </div>
      <asp:label for="Selecionar" class="form-check-label" runat="server">Selecionar </asp:label>
     <div class="form-check">

      <asp:CheckBox ID="CheckBox1" runat="server" />
        <asp:label for="Estrella" class="form-check-label" runat="server">Estrella </asp:label>
     </div>
     <div class="form-check">
      <asp:CheckBox ID="CheckBox2" runat="server" />
        <asp:label for="New" class="form-check-label" runat="server">New </asp:label>
     </div>
      <div class="form-check">
      <asp:CheckBox ID="CheckBox3" runat="server" />
        <asp:label for="Garage" class="form-check-label" runat="server">Garage </asp:label>
     </div>
    <div class="mb-3">
          <asp:label for="Nombre" class="form-label" runat="server">Categoria  </asp:label>
            <asp:DropDownList ID="DdlMonths" runat="server" class="form-select">
            <asp:ListItem Enabled="true" Text="Selecionar categoria" Value="-1"></asp:ListItem>
            <asp:ListItem Text="January" Value="1"></asp:ListItem>
            <asp:ListItem Text="February" Value="2"></asp:ListItem>
            <asp:ListItem Text="December" Value="12"></asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="mb-3">
            <asp:label for="Nombre" class="form-label" runat="server">Marca  </asp:label>
            <asp:DropDownList ID="DropDownList1" runat="server" class="form-select">
            <asp:ListItem Enabled="true" Text="Selecionar marca" Value="-1"></asp:ListItem>
            <asp:ListItem Text="January" Value="1"></asp:ListItem>
            <asp:ListItem Text="February" Value="2"></asp:ListItem>
            <asp:ListItem Text="December" Value="12"></asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="mb-3">
         <asp:label for="Nombre" class="form-label" runat="server">Talle  </asp:label>
            <asp:DropDownList ID="DropDownList2" runat="server" class="form-select">
            <asp:ListItem Enabled="true" Text="Selecionar talle" Value="-1"></asp:ListItem>
            <asp:ListItem Text="January" Value="1"></asp:ListItem>
            <asp:ListItem Text="February" Value="2"></asp:ListItem>
            <asp:ListItem Text="December" Value="12"></asp:ListItem>
        </asp:DropDownList>
    </div>
  <div class="mb-3">
         <asp:label for="Nombre" class="form-label" runat="server">Color  </asp:label>
            <asp:DropDownList ID="DropDownList3" runat="server" class="form-select">
            <asp:ListItem Enabled="true" Text="Selecionar Color" Value="-1"></asp:ListItem>
            <asp:ListItem Text="January" Value="1"></asp:ListItem>
            <asp:ListItem Text="February" Value="2"></asp:ListItem>
            <asp:ListItem Text="December" Value="12"></asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="mb-3">
         <asp:label for="Nombre" class="form-label" runat="server">Color  secundario </asp:label>
            <asp:DropDownList ID="DropDownList4" runat="server" class="form-select">
            <asp:ListItem Enabled="true" Text="Selecionar Color secundario" Value="-1"></asp:ListItem>
            <asp:ListItem Text="January" Value="1"></asp:ListItem>
            <asp:ListItem Text="February" Value="2"></asp:ListItem>
            <asp:ListItem Text="December" Value="12"></asp:ListItem>
        </asp:DropDownList>
    </div>
      <div class="mb-3">
         <asp:label for="Nombre" class="form-label" runat="server">Color  terciario </asp:label>
            <asp:DropDownList ID="DropDownList5" runat="server" class="form-select">
            <asp:ListItem Enabled="true" Text="Selecionar Color terciario" Value="-1"></asp:ListItem>
            <asp:ListItem Text="January" Value="1"></asp:ListItem>
            <asp:ListItem Text="February" Value="2"></asp:ListItem>
            <asp:ListItem Text="December" Value="12"></asp:ListItem>
        </asp:DropDownList>
    </div>
        <div class="mb-3">
         <asp:label for="Nombre" class="form-label" runat="server">Sexo </asp:label>
            <asp:DropDownList ID="DropDownList6" runat="server" class="form-select">
            <asp:ListItem Enabled="true" Text="Selecionar Sexo" Value="-1"></asp:ListItem>
            <asp:ListItem Text="January" Value="1"></asp:ListItem>
            <asp:ListItem Text="February" Value="2"></asp:ListItem>
            <asp:ListItem Text="December" Value="12"></asp:ListItem>
        </asp:DropDownList>
    </div>
     

    <button type="submit" class="btn btn-primary">Submit</button>
  </fieldset>
</form>




</asp:Content>

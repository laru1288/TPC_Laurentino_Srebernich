<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarCategoria.aspx.cs" Inherits="TPC_Laurentino_Srebernich.EditarCategoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <form runat="server">
    <br />
    <br />
    <br />  
    
    <fieldset enable="true"> 
     <asp:label for="leyenda" class="form-label" runat="server">Agregar nuevo Producto  </asp:label>
 
    <div class="mb-3">
         <asp:label for="Nombre" class="form-label" runat="server">Nombre </asp:label>
            <asp:DropDownList ID="D_Nombre" runat="server" class="form-select" datatextfield="Id"
        datavaluefield="Nombre" >
           
        </asp:DropDownList>
    </div>
         <div class="mb-3">
         <asp:label for="Nombre" class="form-label" runat="server">Subcategoria </asp:label>
            <asp:DropDownList ID="D_subcategoria" runat="server" class="form-select" datatextfield="Id" datavaluefield="Nombre" >
           
        </asp:DropDownList>
    </div>  
      

</fieldset>

          <asp:button type="submit" text="Modificar" ID="B_modificar_categoria" class="btn btn-primary" runat="server" Onclick="B_modificar_categoria_Click" />
  </form>

</asp:Content>

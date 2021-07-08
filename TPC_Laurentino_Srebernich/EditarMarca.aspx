<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarMarca.aspx.cs" Inherits="TPC_Laurentino_Srebernich.EditarMarca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <form runat="server">
    <br />
    <br />
    <br />  
    
    <fieldset enable="true"> 
     <asp:label for="leyenda" class="form-label" runat="server">Editar marca  </asp:label>
 
    <div class="mb-3">
      <asp:label for="Nombre" class="form-label" runat="server">Nombre  </asp:label>
        <asp:TextBox id="textNombre" class="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
               
           
    </div>
    
</fieldset>

          <asp:button type="submit" text="Modificar" ID="B_modificar_marca" class="btn btn-primary" runat="server" Onclick="B_modificar_marca_Click" />
  </form>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eliminar.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Eliminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
    <br />
    <br />
    <br />
   
    
    
     <asp:label for="leyenda" class="form-label" runat="server">Eliminar Producto  </asp:label>
 
    
      <h2>Producto  </h2>
        <asp:TextBox id="textNombre" class="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
          

      <h2>Descripcion  </h2>
        <asp:TextBox id="TextDescripcion" class="form-control" placeholder="Descripcion" runat="server"></asp:TextBox>
 
    <h2>Esta seguro que desea eliminar este producto?</h2>

    <a href="/Modificar" class="btn btn-primary">Volver</a>
    <asp:button type="submit" text="Eliminar" ID="B_Eliminar" class="btn btn-primary" runat="server" OnClick="B_Eliminar_Click" />



           



</asp:Content>

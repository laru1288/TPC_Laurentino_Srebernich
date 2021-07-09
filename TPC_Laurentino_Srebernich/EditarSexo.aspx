<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarSexo.aspx.cs" Inherits="TPC_Laurentino_Srebernich.EditarSexo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       
    <br />
    <br />
    <br />  
    
    <fieldset enable="true"> 
     <asp:label for="leyenda" class="form-label" runat="server">Editar genero  </asp:label>
 
    <div class="mb-3">
      <asp:label for="Nombre" class="form-label" runat="server">Nombre  </asp:label>
        <asp:TextBox id="textNombre" class="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
               
           
    </div>
    
</fieldset>

          <asp:button type="submit" text="Modificar" ID="B_modificar_sexo" class="btn btn-primary" runat="server" Onclick="B_modificar_sexo_Click" />
 
</asp:Content>

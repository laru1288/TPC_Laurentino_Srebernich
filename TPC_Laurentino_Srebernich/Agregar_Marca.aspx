﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar_Marca.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Agregar_Marca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
    <br />
    <br />
    <br />
     <asp:label for="leyenda" class="form-label" runat="server">Agregar nuevo Producto  </asp:label>
 
    <div class="mb-3">
      <asp:label for="Nombre" class="form-label" runat="server">Nombre  </asp:label>
        <asp:TextBox id="textNombre" class="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
    </div>
     <div class="mb-3">
         <asp:label for="Nombre" class="form-label" runat="server">Subcategoria </asp:label>
            <asp:DropDownList ID="D_Subcategorias" runat="server" class="form-select"  datatextfield="Id"
        datavaluefield="Nombre" >            
        </asp:DropDownList>
    </div>

           <asp:button type="submit" text="Agregar" ID="B_agregar_categoria" class="btn btn-primary" runat="server" OnClick="B_agregar_categoria_Click" />
 </form>
</asp:Content>

﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar_Color.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Agregar_Color" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
    <br />
    <br />
    <br />
     <asp:label for="leyenda" class="form-label" runat="server">Agregar nuevo color</asp:label>
 
    <div class="mb-3">
      <asp:label for="Nombre" class="form-label" runat="server">Nombre  </asp:label>
        <asp:TextBox id="textNombre" class="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
    </div>
           <asp:button type="submit" text="Agregar" ID="B_agregar_marca" class="btn btn-primary" runat="server" OnClick="B_agregar_color_Click" />

</asp:Content>
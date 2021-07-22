<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar_Sexo.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Agregar_Sexo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        function validar() {
            var Nombre = document.getElementById("<%=textNombre.ClientID%>").value;
           var valido = true;

            if (Nombre === "") {
                $("#<%=textNombre.ClientID%>").removeClass("is-valid");
                $("#<%=textNombre.ClientID%>").addClass("is-invalid");
                valido = false;
            } else {
                $("#<%=textNombre.ClientID%>").removeClass("is-invalid");
                $("#<%=textNombre.ClientID%>").addClass("is-valid");
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
     <asp:label for="leyenda" class="form-label" runat="server">Agregar nuevo genero</asp:label>
 
    <div class="mb-3">
      <asp:label for="Nombre" class="form-label" runat="server">Nombre  </asp:label>
        <asp:TextBox id="textNombre" class="form-control" placeholder="Nombre" ClientIDMode="Static" runat="server"></asp:TextBox>
    </div>
           <asp:button type="submit" text="Agregar" ID="B_agregar_sexo" OnClientClick="return validar()" class="btn btn-primary" runat="server" OnClick="B_agregar_sexo_Click" />

</asp:Content>

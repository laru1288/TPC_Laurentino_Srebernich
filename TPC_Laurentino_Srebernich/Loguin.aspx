<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Loguin.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Loguin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <script>
        function validar() {
            var Usuario = document.getElementById("<%=txtUser.ClientID%>").value;
            var contrasenia = document.getElementById("<%=txtPassword.ClientID%>").value;
           var valido = true;

            if (Nombre === "") {
                $("#<%=txtUser.ClientID%>").removeClass("is-valid");
                $("#<%=txtUser.ClientID%>").addClass("is-invalid");
                valido = false;
            } else {
                $("#<%=txtUser.ClientID%>").removeClass("is-invalid");
                $("#<%=txtUser.ClientID%>").addClass("is-valid");
            }


            if (contrasenia === "") {
                $("#<%=txtPassword.ClientID%>").removeClass("is-valid");
                $("#<%=txtPassword.ClientID%>").addClass("is-invalid");
                valido = false;
            } else {
                $("#<%=txtPassword.ClientID%>").removeClass("is-invalid");
                $("#<%=txtPassword.ClientID%>").addClass("is-valid");
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
 <div class="col-md-6">
        <div class="mb-3">
            <label class="form-label">User</label>
            <asp:TextBox runat="server" id="txtUser" ClientIDMode="Static" placeholder="user name" CssClass="form-control"/>
        </div>
        <div class="mb-3">
            <label class="form-label">Password</label>
            <asp:TextBox runat="server" placeholder="*****" id="txtPassword" ClientIDMode="Static" CssClass="form-control" TextMode="Password"/>
        </div>
        <asp:Button Text="Ingresar" runat="server" OnClientClick="return validar()" ID="btnIngresar" OnClick="btnIngresar_Click" cssclass="btn btn-primary"/>
    </div>
</asp:Content>

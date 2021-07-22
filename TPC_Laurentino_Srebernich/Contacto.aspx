<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script>
        function validar() {
            var Nombre = document.getElementById("<%=txtNombre.ClientID%>").value;
            var Email = document.getElementById("<%=TextEmail.ClientID%>").value;
            var mensaje = document.getElementById("<%=Textmensaje.ClientID%>").value;
            var valido = true;

            if (Nombre === "") {
                $("#<%=txtNombre.ClientID%>").removeClass("is-valid");
                $("#<%=txtNombre.ClientID%>").addClass("is-invalid");
                valido = false;
            } else {
                $("#<%=txtNombre.ClientID%>").removeClass("is-invalid");
                $("#<%=txtNombre.ClientID%>").addClass("is-valid");
            }

        

            if (mensaje === "") {
                $("#<%=Textmensaje.ClientID%>").removeClass("is-valid");
                $("#<%=Textmensaje.ClientID%>").addClass("is-invalid");
                valido = false;
            } else {
                $("#<%=Textmensaje.ClientID%>").removeClass("is-invalid");
                $("#<%=Textmensaje.ClientID%>").addClass("is-valid");
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
    <section>
<br><div class="container-contactus">
      <div class="row">
      <div class="col-sm-12 col-md-8">
       <h4>Contactanos</h4>
       
       <div class="form-group">
        Nombre
        <asp:TextBox type="text" class="form-control input-lg"  Id="txtNombre" runat="server" ClientIDMode="Static"></asp:TextBox>
       </div>
       <div class="form-group">
        Email
    <asp:TextBox type="email" class="form-control input-lg"  Id="TextEmail" runat="server" ClientIDMode="Static"></asp:TextBox>
       </div>
       <div class="form-group">
Mensaje
 <asp:TextBox type="textarea" class="form-control input-lg" rows="5"  Id="Textmensaje" runat="server" ClientIDMode="Static"></asp:TextBox>
            </div>
     <asp:Button type="submit" Text="Enviar" ID="B_enviar" class="btn btn-primary" OnClientClick="return validar()" runat="server" Style="background-color:#7DB6AD" OnClick="B_enviar_Click" />           
        </div>
   <div class="col-sm-12 col-md-4">
      <h4>Informacion</h4>

   <div class="highlighted-block">
     <dl class="icon-holder">
      <dt><a target="_blank" href="https://goo.gl/maps/Gxne9LpGubcQeSVW6" ><i class="fa fa-map-marker" style="color:#818a91"></i></a></dt>
   <dd> Villa Urquiza - Bs.As. Argentina</dd>
   <dt><a target="_blank" href="https://bit.ly/3c7ZPvC"><i class="fab fa-whatsapp" style="color:#818a91"></i></a></dt>
   <dd>+54 11 7364-4038</dd>
  
    <dt><a target="_blank" href="mailto:gabriela.solferini@gmail.com"><i class="fa fa-envelope" style="color:#818a91"></i></a> </dt><dd>gabriela.solferini@gmail.com</dd></dl>
              </div>
              <br>
 <ul class="social-icons size-sm text-center">
    <li><a href="https://www.instagram.com/outfit.urquiza/"><i class="fab fa-instagram"></i></a></li>
    <li><a href="https://www.facebook.com/outfit.urquiza"><i class="fab fa-facebook"></i></a></li>
        <li><a href="https://bit.ly/3c7ZPvC"><i class="fab fa-whatsapp"></i></a></li>
   
              </ul>
            </div>
          </div>
        </div>
      </section>

    <!--VIEJOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO-->



</asp:Content>

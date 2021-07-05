<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Agregar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <form runat="server"> 

    <br />
    <br />
    <br />
    <div class="row">
        <div class="col-4">
            <div class="card">
                <div class="card-header"> Agregar producto nuevo</div>
                    <div class="card-body">
                        
                    
                                <div class="form-group">
                                    <input type="text" class="form-control1" id="Nombre" placeholder="Nombre"  runat="server" />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control1" id="Descripcion" placeholder="Descripcion"  runat="server" />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control1" id="Imagen_Principal" placeholder="Imagen_Principal"  runat="server" />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control1" id="Imagen_2" placeholder="Imagen_2"  runat="server" />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control1" id="Imagen_3" placeholder="Imagen_3"  runat="server" />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control1" id="Stock" placeholder="Stock"  runat="server" />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control1" id="Precio" placeholder="Precio"  runat="server" />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control1" id="Precio_prom" placeholder="Precio_prom"  runat="server" />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control1" id="Ancho" placeholder="Ancho"  runat="server" />
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control1" id="Largo" placeholder="Largo"  runat="server" />
                                </div>

                               <div class="form-group">
                                     <asp:CheckBox ID="CheckBox1" runat="server" />
                                      <asp:label for="Estrella" class="form-check-label" runat="server">Estrella </asp:label>
                                 </div>

                               <div class="form-group">
                                  <asp:CheckBox ID="CheckBox2" runat="server" />
                                    <asp:label for="New" class="form-check-label" runat="server">New </asp:label>
                                 </div>
                                  <div class="form-group">
                                  <asp:CheckBox ID="CheckBox3" runat="server" />
                                    <asp:label for="Garage" class="form-check-label" runat="server">Garage </asp:label>
                                 </div>
                                <div class="form-group">
                                      <asp:label for="Nombre" class="form-label" runat="server">Categoria  </asp:label>
                                        <asp:DropDownList ID="D_Categoria" runat="server" class="form-select" datatextfield="Id"
                                    datavaluefield="Nombre" >
            
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                        <asp:label for="Nombre" class="form-label" runat="server">Marca  </asp:label>
                                        <asp:DropDownList ID="D_Marcas" runat="server" class="form-select" datatextfield="Id"
                                    datavaluefield="Nombre" >
            
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                     <asp:label for="Nombre" class="form-label" runat="server">Talle  </asp:label>
                                        <asp:DropDownList ID="D_Talle" runat="server" class="form-select" datatextfield="Id"
                                    datavaluefield="Nombre">
            
                                    </asp:DropDownList>
                                </div>
                              <div class="form-group">
                                     <asp:label for="Nombre" class="form-label" runat="server">Color  </asp:label>
                                        <asp:DropDownList ID="D_Color1" runat="server" class="form-select" datatextfield="Id"
                                    datavaluefield="Nombre" >
            
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                     <asp:label for="Nombre" class="form-label" runat="server">Color  secundario </asp:label>
                                        <asp:DropDownList ID="D_Color2" runat="server" class="form-select" datatextfield="Id"
                                    datavaluefield="Nombre" >
           
                                    </asp:DropDownList>
                                </div>
                                   <div class="form-group">
                                     <asp:label for="Nombre" class="form-label" runat="server">Sexo </asp:label>
                                        <asp:DropDownList ID="D_Sexo" runat="server" class="form-select"  datatextfield="Id"
                                    datavaluefield="Nombre" >
            
                                    </asp:DropDownList>
                                </div>

                               <asp:Button  ID="Button_Agregar" runat="server" Text="Agregar" class="btn btn-primary" OnClick="Button_Agregar_Click"  />

                    </div>
            </div>
        </div>
    </div>
  

</form>

</asp:Content>

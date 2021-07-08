<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Editables.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Editables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <br />
        <br />
        <p>Agregar/Modificar Categorias</p>
        <table class="table table-success table-striped" id="tabla_editables" style="width: 100%">
            <thead>
                <tr>
                    <td>
                        <p>Accion</p>
                    </td>
                    <td>
                        <p>Nombre</p>
                    </td>
                    <td>
                        <p>Subcategoria</p>
                    </td>
            </thead>
            <tbody>

                <%foreach (Dominio.Categoria item in l_categoria)
                    {%>
                <tr>
                    <td><a href="EditarCategoria.aspx?id=<%= item.ID %>&evento=editar" onclick="modificar"><i class="far fa-edit"></i></a></td>
                    <td>
                        <p><%= item.Nombre %></p>
                    </td>
                    <td>
                        <p><%= item.Nombresub %></p>
                    </td>
                </tr>
                <%  } %>
            </tbody>

        </table>


        <asp:Button type="submit" Text="Agregar nueva categoria" ID="B_Agregar_Categoria" class="btn btn-primary" runat="server" OnClick="B_Agregar_Categoria_Click" />
        
        <br /><br />
        <p>Agregar/Modificar marcas</p>
        <table class="table table-success table-striped" id="tabla_editables" style="width: 100%">
            <thead>
                <tr>
                    <td>
                        <p>Accion</p>
                    </td>
                    <td>
                        <p>Nombre</p>
                    </td>
            </thead>
            <tbody>

                <%foreach (Dominio.Marca item in l_marca)
                    {%>
                <tr>
                    <td><a href="EditarMarca.aspx?id=<%= item.ID %>&evento=editar" onclick="modificar"><i class="far fa-edit"></i></a></td>
                    <td>
                        <p><%= item.Nombre %></p>
                    </td>
                </tr>
                <%  } %>
            </tbody>

        </table>


        <asp:Button type="submit" Text="Agregar nueva marca" ID="Button1" class="btn btn-primary" runat="server" OnClick="B_Agregar_Marca_Click" />

        <br /><br />

                <p>Agregar/Modificar colores</p>
        <table class="table table-success table-striped" id="tabla_editables" style="width: 100%">
            <thead>
                <tr>
                    <td>
                        <p>Accion</p>
                    </td>
                    <td>
                        <p>Nombre</p>
                    </td>
            </thead>
            <tbody>

                <%foreach (Dominio.Color item in l_color)
                    {%>
                <tr>
                    <td><a href="EditarColor.aspx?id=<%= item.ID %>&evento=editar" onclick="modificar"><i class="far fa-edit"></i></a></td>
                    <td>
                        <p><%= item.Nombre %></p>
                    </td>
                </tr>
                <%  } %>
            </tbody>

        </table>


        <asp:Button type="submit" Text="Agregar nuevo color" ID="Button2" class="btn btn-primary" runat="server" OnClick="B_Agregar_Color_Click" />

        <br /><br />

                <p>Agregar/Modificar generos</p>
        <table class="table table-success table-striped" id="tabla_editables" style="width: 100%">
            <thead>
                <tr>
                    <td>
                        <p>Accion</p>
                    </td>
                    <td>
                        <p>Nombre</p>
                    </td>
            </thead>
            <tbody>

                <%foreach (Dominio.Sexo item in l_sexo)
                    {%>
                <tr>
                    <td><a href="EditarSexo.aspx?id=<%= item.ID %>&evento=editar" onclick="modificar"><i class="far fa-edit"></i></a></td>
                    <td>
                        <p><%= item.Nombre %></p>
                    </td>
                </tr>
                <%  } %>
            </tbody>

        </table>


        <asp:Button type="submit" Text="Agregar nuevo genero" ID="Button3" class="btn btn-primary" runat="server" OnClick="B_Agregar_Sexo_Click" />

        <br /><br />

                <p>Agregar/Modificar talles</p>
        <table class="table table-success table-striped" id="tabla_editables" style="width: 100%">
            <thead>
                <tr>
                    <td>
                        <p>Accion</p>
                    </td>
                    <td>
                        <p>Nombre</p>
                    </td>
            </thead>
            <tbody>

                <%foreach (Dominio.Talle item in l_talle)
                    {%>
                <tr>
                    <td><a href="EditarTalle.aspx?id=<%= item.ID %>&evento=editar" onclick="modificar"><i class="far fa-edit"></i></a></td>
                    <td>
                        <p><%= item.Nombre %></p>
                    </td>
                </tr>
                <%  } %>
            </tbody>

        </table>

        <asp:Button type="submit" Text="Agregar nuevo talle" ID="Button4" class="btn btn-primary" runat="server" OnClick="B_Agregar_Talle_Click" />

        <br /><br />

    </form>
</asp:Content>

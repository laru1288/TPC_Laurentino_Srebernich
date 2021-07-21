<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Loguin.aspx.cs" Inherits="TPC_Laurentino_Srebernich.Loguin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div class="col-md-6">
        <div class="mb-3">
            <label class="form-label">User</label>
            <asp:TextBox runat="server" id="txtUser" placeholder="user name" CssClass="form-control"/>
        </div>
        <div class="mb-3">
            <label class="form-label">Password</label>
            <asp:TextBox runat="server" placeholder="*****" id="txtPassword" CssClass="form-control" TextMode="Password"/>
        </div>
        <asp:Button Text="Ingresar" runat="server" ID="btnIngresar" OnClick="btnIngresar_Click" cssclass="btn btn-primary"/>
    </div>
</asp:Content>

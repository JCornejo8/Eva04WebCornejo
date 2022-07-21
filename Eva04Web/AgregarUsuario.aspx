<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="Eva04Web.AgregarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
<div class="row">
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header bg-black text-white">
                    <h3>Agregar Usuario</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="nombreTxt">Nombre:</label>
                        <asp:TextBox ID="nombreTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="nombreTxt" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe Ingresar su nombre"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="rutTxt">Rut:</label>
                        <asp:TextBox ID="rutTxt" CssClass="form-control" runat="server"></asp:TextBox>  
                        <asp:RequiredFieldValidator ControlToValidate="rutTxt" CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe Ingresar Rut Valido"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="contraseñaTxt">Contraseña:</label>
                        <asp:TextBox ID="contraseñaTxt" CssClass="form-control" runat="server"></asp:TextBox>  
                        <asp:RequiredFieldValidator ControlToValidate="contraseñaTxt" CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe Ingresar una contraseña"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="correoTxt">Correo Electronico:</label>
                        <asp:TextBox ID="correoTxt" CssClass="form-control" runat="server"></asp:TextBox>  
                        <asp:RequiredFieldValidator ControlToValidate="correoTxt" CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe Ingresar un correo"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button runat="server" CssClass="btn btn-secondary" OnClick="ingresarBtn_Click" ID="ingresarBtn" Text="Ingresar" />          
                 
                </div>
            </div>
        </div>
    </div>
</asp:Content>

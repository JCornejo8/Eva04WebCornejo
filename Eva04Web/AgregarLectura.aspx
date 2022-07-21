<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarLectura.aspx.cs" Inherits="Eva04Web.AgregarLectura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <div class="row">
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header bg-black text-white">
                    <h3>Agregar Lectura</h3>
                </div>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label for="medidorDDL">Medidor:</label>
                    <asp:DropDownList ID="MedidorDDL" runat="server"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="usuarioDDL">Usuario:</label>
                    <asp:DropDownList ID="usuarioDDL" runat="server"></asp:DropDownList>
                </div>
                <div class="form-group">
                        <label for="lecturaTxt">Lectura del Medidor:</label>
                        <asp:TextBox ID="lecturaTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="lecturaTxt" CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe Ingresar la lectura del medidor"></asp:RequiredFieldValidator>
                    </div> 
                 <asp:Button runat="server" CssClass="btn btn-secondary" OnClick="ingresarBtn_Click" ID="ingresarBtn" Text="Ingresar" />
            </div>

        </div>


      </div>


</asp:Content>

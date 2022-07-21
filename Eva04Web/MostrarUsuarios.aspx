<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MostrarUsuarios.aspx.cs" Inherits="Eva04Web.MostrarUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
 <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>

    <div class="row">
        
        <asp:UpdatePanel ID="UpdatePanel" runat="server">
            <ContentTemplate>
                <div class="row mt-5">
                    <asp:GridView 
                        CssClass="table table-hover table-bordered"
                        ID="grillaUsuario"
                        AutoGenerateColumns="false"
                        ShowHeaderWhenEmpty="true"
                        EmptyDataText="No hay registros"                       
                        runat="server"
                        OnRowCommand="grillaUsuario_RowCommand">
                        
                        <Columns>
                            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                            <asp:BoundField HeaderText="Rut" DataField="Rut" />
                            <asp:BoundField HeaderText="Contraseña" DataField="Contraseña" />
                            <asp:BoundField HeaderText="Correo" DataField="Correo" />
                            <asp:TemplateField HeaderText="Acciones">
                                <ItemTemplate>
                                    <asp:Button CssClass="btn btn-danger" runat="server"
                                        CommandName="eliminar" Text="Eliminar"
                                        CommandArgument='<%#Eval("IdUsuario") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
        </ContentTemplate>           
        </asp:UpdatePanel>

        </div>
</asp:Content>
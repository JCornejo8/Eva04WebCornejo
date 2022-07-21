<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MostrarLecturas.aspx.cs" Inherits="Eva04Web.MostrarLecturas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
     <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
    <div class="row">
        <div class="col-lg-6 mx-auto">

        </div>

        <asp:UpdatePanel ID="UpdatePanel" runat="server">
            <ContentTemplate>
            <div class="row mt-5">
                <asp:GridView
                        CssClass="table table-hover table-bordered"
                        ID="grillaLectura"
                        AutoGenerateColumns="false"
                        ShowHeaderWhenEmpty="true"
                        EmptyDataText="No hay registros"                       
                        runat="server"
                        OnRowCommand="grillaLectura_RowCommand">

                        <Columns>
                            <asp:BoundField HeaderText="Medidor" DataField="Medidor.NumeroMedidor"/>
                            <asp:BoundField HeaderText="Usuario" DataField="Usuario.Nombre"/>
                            <asp:BoundField HeaderText="Consumo" DataField="Consumo"/>
                            <asp:BoundField HeaderText="Fecha Medicion" DataField="FechaLectura"/>
                            <asp:TemplateField HeaderText="Acciones">
                                <ItemTemplate>
                                    <asp:Button CssClass="btn btn-danger" runat="server"
                                        CommandName="eliminar" Text="Eliminar"
                                        CommandArgument='<%#Eval("IdLectura") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                </asp:GridView>

            </div>
             </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>

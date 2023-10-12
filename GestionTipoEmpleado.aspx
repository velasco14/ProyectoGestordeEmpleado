<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="GestionTipoEmpleado.aspx.cs" Inherits="Guia_5___Progra_II.GestionTipoEmpleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Definimos la cabecera de la página -->
    <section class="content-header">
        <h1 style="text-align: center">Registro de Tipos de Empleados</h1>
    </section>
    <!-- Definimos el contenido de la página -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-danger">
                    <div class="box-body">
                        <div class="form-group">
                            <label>Código Tipo Empleado</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TxtIdTipoEmp" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="ValidatorTipoEmp" runat="server" ControlToValidate="TxtIdTipoEmp" Display="Dynamic" ErrorMessage="** No debe exederse más de 5 digitos **" ForeColor="Red" ValidationExpression="^\d{1,5}$"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtIdTipoEmp" ErrorMessage="** Este campo no puede quedar vacio **" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Descripción</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TxtDescripcion" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="ValidatorDescripcion" runat="server" ControlToValidate="TxtDescripcion" Display="Dynamic" ErrorMessage="** No debe exederse más de 25 caracteres **" ForeColor="Red" ValidationExpression="^.{0,25}$"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtDescripcion" ErrorMessage="** Este campo no puede quedar vacio **" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Estado</label>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="DDListEstado" runat="server">
                                <asp:ListItem>Activo</asp:ListItem>
                                <asp:ListItem>Inactivo</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div align="center">
            <table>
                <tr>
                    <td>
                        <asp:Button ID="BtnRegistrar" runat="server" CssClass="btn btn-warning"
                            Width="200px" Text="Registrar" Font-Bold="true" OnClick="BtnRegistrar_Click" />
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnCancelar" runat="server" CssClass="btn btn-danger"
                            Width="200px" Text="Cancelar" Font-Bold="true" />
                    </td>
                </tr>
            </table>
        </div>
    </section>
</asp:Content>




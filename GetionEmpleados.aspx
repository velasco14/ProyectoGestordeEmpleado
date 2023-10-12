<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="GetionEmpleados.aspx.cs" Inherits="Guia_5___Progra_II.GetionEmpleados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Defino la cabecera de la pagina-->
    <section class="content-header">
        <h1 style="text-align: center">Registro de Empleados</h1>
    </section>

    <!-- Definimos el contenido de la página con dos columnas -->
    <section class="content">
        <div class="row">
            <!-- Columna 1 -->
            <div class="col-md-6">
                <div class="box box-danger">
                    <div class="box-body">
                        <div class="form-group">
                            <label>Código Empleado</label>
                            <asp:TextBox runat="server" ID="txtCodigoEmpleado" Text="" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="ValidatorCodEmpleado" runat="server" ControlToValidate="txtCodigoEmpleado" Display="Dynamic" ErrorMessage="** El codigo debe ser menor a 8 caracteres **" ForeColor="Red" ValidationExpression="^\d{1,8}$"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCodigoEmpleado" ErrorMessage="** Este campo no debe quedar vacio **" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>ID Tipo Empleado</label>
                            <asp:TextBox runat="server" ID="txtIDTipoEmpleado" Text="" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="ValidatorIDEmpleado" runat="server" ControlToValidate="txtIDTipoEmpleado" Display="Dynamic" ErrorMessage="** El ID debe ser menor a 5 caracteres **" ForeColor="Red" ValidationExpression="^\d{1,5}$"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtIDTipoEmpleado" ErrorMessage="** Este campo no debe quedar vacio **" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Nombres</label>
                            <asp:TextBox runat="server" ID="txtNombres" Text="" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombres" ErrorMessage="** Este campo no puede quedar vacio **" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Apellidos</label>
                            <asp:TextBox runat="server" ID="txtApellidos" Text="" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidatorNombres" runat="server" ControlToValidate="txtApellidos" ErrorMessage="** Este Campo no puede quedar vacio **" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Columna 2 -->
            <div class="col-md-6">
                <div class="box box-danger">
                    <div class="box-body">
                        <div class="form-group">
                            <label>DUI</label>
                            <asp:TextBox runat="server" ID="txtDUI" Text="" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="ValidatorDui" runat="server" ControlToValidate="txtDUI" Display="Dynamic" ErrorMessage="** Ingrese el DUI de la forma correcta **" ForeColor="Red" ValidationExpression="^\d{8}-\d{1}$"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDUI" ErrorMessage="** Este campo no debe quedar vacio **" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Estado</label>
                            <asp:DropDownList ID="DDListEstado" runat="server" CssClass="form-control">
                                <asp:ListItem>Activo</asp:ListItem>
                                <asp:ListItem>Inactivo</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <asp:FileUpload ID="FileUpload1" runat="server" type="file" CssClass="form-control-file " />

                        </div>
                        <div class="form-group">
                            <label>Usuario</label>
                            <asp:TextBox runat="server" ID="txtUsuario" Text="" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidatorUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="** Este campo no puede quedar vacio **" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>Clave</label>
                            <asp:TextBox runat="server" ID="txtClave" Text="" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidatorClave" runat="server" ControlToValidate="txtClave" ErrorMessage="** Este campo no puede quedar vacio **" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Botones de Registro y Cancelar -->
        <div align="center">
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-warning" Style="width: 200px; font-weight: bold;" OnClick="btnRegistrar_Click" />

                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-danger" Style="width: 200px; font-weight: bold;" />
                    </td>
                </tr>
            </table>
        </div>
    </section>
</asp:Content>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Guia_5___Progra_II.Login" %>

<!DOCTYPE html>

<html class="bg-black" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Acceso al Sistema Game Club</title>
    <!--Librerias para la gestion del usuario-->
    <!--CSS-->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!--Font Awsome-->
    <link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!--Admin LTE-->
    <link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
</head>
<body class="bg-black">
    <div class="form-box" id="CajaLogin">
        <div class="header">Login</div>
        <form id="form1" runat="server">
            <div class="body bg-blue-gradient">
                <div class="form-group">
                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" placeholder="Ingresa Usuario"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidatorUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="** Este campo no puede quedar vacio **" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Ingresa Contraseña" TextMode="Password" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorContraseña" runat="server" ControlToValidate="txtPassword" ErrorMessage="** Este campo no puede quedar vacio **" Font-Strikeout="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <!--Pie de pagina-->
            <div class="footer">
                <asp:Button ID="btnIngresar" runat="server" Text="Iniciar Sesion" CssClass="btn bg-orange btn-block" OnClick="btnIngresar_Click" />
            </div>
        </form>
    </div>

    <!--Libreria de JavaScript-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
        crossorigin="anonymous"></script>

</body>
</html>

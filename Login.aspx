<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="ControlDeUsuarios.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 475px;
            margin-left: 75px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <br />
            <asp:Label ID="MensajeBienvenidaLabel" runat="server" Font-Size="XX-Large" Text="BIENVENIDO"></asp:Label>
            <br />
            <br />
            <asp:Label ID="UsuarioLabel" runat="server" Text="E-Mail"></asp:Label>
            <br />
            <asp:TextBox ID="UsuarioTB" runat="server" Width="277px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UsuarioTB" ErrorMessage="Campo obligatorio" ValidationGroup="login"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="ContrasenaLabel" runat="server" Text="Contraseña"></asp:Label>
            <br />
            <asp:TextBox ID="ContrasenaTB" runat="server" TextMode="Password" Width="275px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ContrasenaTB" ErrorMessage="Campo obligatorio" ValidationGroup="login"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="InicioSesionBtn" runat="server" Height="44px" Text="INICIAR SESIÓN" Width="280px" ValidationGroup="login" />
            <br />
            <br />
            <asp:Label ID="MensajeRegistroLabel" runat="server" Text="¿No tiene usuario?"></asp:Label>
            <br />
            <asp:Button ID="Button2" runat="server" Text="REGISTRARSE" />
        </div>
    </form>
</body>
</html>
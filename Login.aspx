<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="ControlDeUsuarios.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  background: #34495e;
}
.box{
  width: 300px;
  padding: 40px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  background: #191919;
  text-align: center;
}
.box h1{
  color: white;
  text-transform: uppercase;
  font-weight: 500;
}
.box input[type = "text"],.box input[type = "password"]{
  border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #3498db;
  padding: 14px 10px;
  width: 200px;
  outline: none;
  color: white;
  border-radius: 24px;
  transition: 0.25s;
}
.box input[type = "text"]:focus,.box input[type = "password"]:focus{
  width: 280px;
  border-color: #2ecc71;
}
.box input[type = "submit"]{
  border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #2ecc71;
  padding: 14px 40px;
  outline: none;
  color: white;
  border-radius: 24px;
  transition: 0.25s;
  cursor: pointer;
}
.box input[type = "submit"]:hover{
  background: #2ecc71;
}

    </style>
</head>
<body>
    <form id="form1" runat="server" class="box">
        <div class="auto-style1">
            <br />
            <br />
            <h1>BIENVENIDO</h1>
            <br />
            <br />
            <br />
            <asp:TextBox ID="UsuarioTB" runat="server" Width="277px" placeholder="email"></asp:TextBox>
            <br />
            <asp:TextBox ID="ContrasenaTB" runat="server" TextMode="Password" Width="275px" placeholder="password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="InicioSesionBtn" runat="server" Height="44px" Text="INICIAR SESIÓN" Width="280px" ValidationGroup="login" />
            <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
            <br />
            <br />
            <asp:Label ID="MensajeRegistroLabel" runat="server" Text="¿No tiene usuario?" ForeColor="White"></asp:Label>
            <br />
            <asp:Button ID="Button2" runat="server" Text="REGISTRARSE" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UsuarioTB" ErrorMessage="Usuario obligatorio" ValidationGroup="login" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ContrasenaTB" ErrorMessage="Contraseña obligatoria" ValidationGroup="login" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
    </form>
</body>
</html>
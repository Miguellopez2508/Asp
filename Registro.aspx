<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registro.aspx.vb" Inherits="ControlDeUsuarios.WebForm1" %>

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
  top: 60%;
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
                <div>
            <h1>REGISTRO</h1>
            <br />
        </div>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" placeholder="Nombre" Width="282px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Campo obligatorio" ValidationGroup="obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Ingrese solo letras" ValidationExpression="^[A-Za-zá-úÁ-ÚñÑ ]*$" ValidationGroup="obligatorio" ForeColor="Red"></asp:RegularExpressionValidator>
        
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" placeholder="Apellido" Width="285px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Campo obligatorio" ValidationGroup="obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[A-Za-zá-úÁ-ÚñÑ ]*$" ValidationGroup="obligatorio" ForeColor="Red"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" placeholder="DNI" Width="285px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Campo obligatorio" ValidationGroup="obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="DNI incorrecto" ValidationExpression="^(([A-Z]\d{8})|(\d{8}[A-Z]))$" ForeColor="Red"></asp:RegularExpressionValidator>

        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px" placeholder="E-Mail" Width="287px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Campo obligatorio" ValidationGroup="obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email incorrecto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="obligatorio" ForeColor="Red"></asp:RegularExpressionValidator>

        <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px" placeholder="Telefono" Width="283px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="Campo obligatorio" ValidationGroup="obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Solo numeros y 9 digitos" ValidationExpression="^\d{9}$" ValidationGroup="obligatorio" ForeColor="Red"></asp:RegularExpressionValidator>

        <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 0px" TextMode="Password" placeholder="Contraseña" Width="283px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="Campo obligatorio"  ValidationGroup="obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
    
        <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" placeholder="Confirmar contraseña" Width="287px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Campo obligatorio"  ValidationGroup="obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="No coinciden las contraseñas" ValidationGroup="obligatorio" ForeColor="Red"></asp:CompareValidator>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Registrar" ValidationGroup="obligatorio" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Cancelar" />
        <br />
        <asp:Label ID="Label8" runat="server" ForeColor="Red"></asp:Label>

    </form>
</body>
</html>

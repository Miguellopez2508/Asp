﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registro.aspx.vb" Inherits="ControlDeUsuarios.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="XX-Large" Text="REGISTRO"></asp:Label>
            <br />
        </div>
        <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
&nbsp;&nbsp;
        <br />
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Campo obligatorio" ValidationGroup="obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Ingrese solo letras" ValidationExpression="^[A-Za-zá-úÁ-ÚñÑ ]*$" ValidationGroup="obligatorio" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Apellido:"></asp:Label>
&nbsp;
        <br />
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Campo obligatorio" ValidationGroup="obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Ingrese solo letras" ValidationExpression="^[A-Za-zá-úÁ-ÚñÑ ]*$" ValidationGroup="obligatorio" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="DNI:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Campo obligatorio" ValidationGroup="obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="DNI incorrecto" ValidationExpression="^(([A-Z]\d{8})|(\d{8}[A-Z]))$" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Campo obligatorio" ValidationGroup="obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email incorrecto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="obligatorio" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="Telefono:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="Campo obligatorio" ValidationGroup="obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Solo numeros y 9 digitos" ValidationExpression="^\d{9}$" ValidationGroup="obligatorio" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Contraseña:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 0px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="Campo obligatorio"  ValidationGroup="obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Confirmar Contraseña:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
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

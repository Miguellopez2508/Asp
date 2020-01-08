<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="VerDetalles.aspx.vb" Inherits="ControlDeUsuarios.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="TipoLabel" runat="server" Text="Tipo"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="NombreLabel" runat="server" Text="NOMBRE"></asp:Label>
            <br />
&nbsp;&nbsp;
            <br />
            <div class="auto-style2">
                <asp:Label ID="DescripcionLabel" runat="server" Text="DESCRIPCIÓN"></asp:Label>
            </div>
            <br />
            <asp:Label ID="TelefonoLabel" runat="server" Text="TELEFONO"></asp:Label>
  
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
                <asp:Label ID="TerritorioLabel" runat="server" Text="TERRITORIO"></asp:Label>

            <br />
            <br />
            <asp:Label ID="EMailLabel" runat="server" Text="EMail"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
                <asp:Label ID="MunicipioLabel" runat="server" Text="MUNICIPIO"></asp:Label>

            <br />
            <br />
            <asp:Label ID="WebLabel" runat="server" Text="WEB"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
                <asp:Label ID="DireccionLabel" runat="server" Text="DIRECCIÓN"></asp:Label>

            <br />
            <br />
            <asp:Label ID="CapacidadLabel" runat="server" Text="CAPACIDAD"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="CodigoPostalLabel" runat="server" Text="CÓDIGO_POSTAL"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="ReservaBtn" runat="server" Height="37px" Text="RESERVAR" Width="217px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="VolverBtn" runat="server" Height="33px" Text="VOLVER" Width="98px" />
            <br />
            <br />
    </form>
</body>
</html>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="Inicio_Sesion.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Filtros de Busqueda : "></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="NombreTB" runat="server" Width="240px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Tipo de alojamiento: "></asp:Label>
            <asp:DropDownList ID="alojamientoDDL" runat="server" AutoPostBack="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Alojamiento Rural</asp:ListItem>
                <asp:ListItem>Albergue</asp:ListItem>
                <asp:ListItem>Camping</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="BuscarBtn" runat="server" Text="Buscar" />
            <br />
            <br />
            <asp:Label ID="resultadolabel" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>

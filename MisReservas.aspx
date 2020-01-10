<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MisReservas.aspx.vb" Inherits="ControlDeUsuarios.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script>
        function modificar(id, id2) {
            document.getElementById("HiddenField1").value = id;
            document.getElementById("HiddenField2").value = id2;
        }
    </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="MIS RESERVAS"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="VolverBtn" runat="server" Text="PA' TRA'" Width="131px" />
            <br />
            <br />
            <asp:Label ID="ResultadoLabel" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <asp:HiddenField ID="HiddenField2" runat="server" />
            <br />
        </div>
    </form>
</body>
</html>
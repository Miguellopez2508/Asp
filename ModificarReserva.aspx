<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ModificarReserva.aspx.vb" Inherits="ControlDeUsuarios.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script>
        function testing(id) {
            Document.GetElementById("TextBox1").value = id;
        }
    </script>
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
        <br />
            <br />
            <br />
            <asp:Button ID="HacerReservaBtn" runat="server" Height="37px" Text="MODIFICAR" Width="217px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="EliminarBtn" runat="server" Height="37px" Text="ELIMINAR" Width="217px" BackColor="Red" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="VolverBtn" runat="server" Height="38px" Text="VOLVER" Width="98px" />
                <br />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <asp:Label ID="Label1" runat="server" Text="Fecha Inicio: "></asp:Label>
            <asp:Label ID="FechaInicioLabel" runat="server"></asp:Label>
            <br />
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Fecha Fin: "></asp:Label>
            <asp:Label ID="FechaFinLabel" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
            <br />
            <asp:Button ID="confirmarBtn" runat="server" Height="57px" Text="CONFIRMAR" Width="220px" />
            <br />
        </asp:Panel>
        <br />
                &nbsp;<br />
    </form>
</body>
</html>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="VerDetalles.aspx.vb" Inherits="ControlDeUsuarios.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        
        .centrar_reserva {
        float: left;
        transform:translate(-50%, -50%);
        margin-left: 100px;
        }
        h2 {
  margin:0;
  padding:0;
  font-family: sans-serif;
  text-align:center;
  color: black;
  font-size:16px;
  padding:15px 0;
  text-transform: uppercase;
  letter-spacing:4px;
}
input[type="checkbox"] {
  margin:10px;
  position:relative;
  width:120px;
  height:40px;
  -webkit-appearance: none;
  background: linear-gradient(0deg, #333, #000);
  outline: none;
  border-radius: 20px;
  box-shadow: 0 0 0 4px #353535, 0 0 0 5px #3e3e3e, inset 0 0 10px rgba(0,0,0,1);
}

input:checked[type="checkbox"] {
  background: linear-gradient(0deg, #e67e22, #f39c12);
  box-shadow: 0 0 0 4px #353535, 0 0 0 5px #3e3e3e, inset 0 0 10px rgba(0,0,0,1);
}
input[type="checkbox"]:before {
  content:'';
  position:absolute;
  top:0;
  left:0;
  width:80px;
  height:40px;
  background: linear-gradient(0deg, #000, #6b6b6b);
  border-radius: 20px;
  box-shadow: 0 0 0 1px #232323;
  transform: scale(.98,.96);
  transition:.5s;
}

input:checked[type="checkbox"]:before {
  left:40px;
}

input[type="checkbox"]:after{
  content:'';
  position:absolute;
  top:calc(50% - 2px);
  left:70px;
  width:4px;
  height:4px;
  background: linear-gradient(0deg, #6b6b6b, #000);
  border-radius: 50%;
  transition:.5s;
}

input:checked[type="checkbox"]:after {
  left:110px;
}

        </style>
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="centrar_reserva">
            <h2>HACER RESERVA</h2>
            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" />
        </div>
                
                <asp:Button ID="VolverBtn" runat="server" Height="38px" Text="VOLVER" Width="98px" />
                
                &nbsp;&nbsp;&nbsp;
                
                <br />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Fecha Inicio: "></asp:Label>
            <asp:Label ID="FechaInicioLabel" runat="server"></asp:Label>
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
            <br />
            <asp:Button ID="ReservarBtn" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Height="52px" Text="RESERVAR" Width="240px" />
        </asp:Panel>
        <br />
                &nbsp;<br />
    </form>
</body>
</html>

Imports MySql.Data.MySqlClient
Public Class WebForm6
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim connection As MySqlConnection
        connection = conectar()
        'Dim consulta As String = "SELECT * FROM reservas, alojamientos WHERE dni='" & Session("DNI") & "'"
        Dim consulta As String = "SELECT `reservas`.*, `alojamientos`.* FROM `reservas` LEFT JOIN `alojamientos` ON `reservas`.`ID_ALOJAMIENTO` = `alojamientos`.`ID` where `reservas`.`DNI` = '" & Session("DNI") & "'"
        Dim comando As New MySqlCommand(consulta)
        comando.Connection = connection
        Dim resultado As MySqlDataReader
        resultado = comando.ExecuteReader

        While resultado.Read()
            Me.ResultadoLabel.Text += resultado(6) & ", desde " & resultado(2) & " hasta " & resultado(3) & " <button OnClick=" & "modificar('" & resultado(4) & "','" & resultado(0) & "') >Ver detalles</button><br>"
        End While
        If resultado Is Nothing Then
            Me.ResultadoLabel.Text = "SIN RESERVAS"
        End If
        connection.Close()
    End Sub
    Public Function conectar() As MySqlConnection
        Try
            Dim conexion As New MySqlConnectionStringBuilder()
            conexion.Server = "localhost"
            conexion.UserID = "root"
            conexion.Password = ""
            conexion.Database = "alojamiento"

            Dim con As New MySqlConnection(conexion.ToString())
            con.Open()
            Return con
        Catch ex As Exception
            MsgBox("No se pudo conectar con la base de datos")
            Return Nothing
        End Try
    End Function

    Protected Sub VolverBtn_Click(sender As Object, e As EventArgs) Handles VolverBtn.Click
        Response.Redirect("FiltroBusqueda.aspx")
    End Sub

    Protected Sub HiddenField1_ValueChanged(sender As Object, e As EventArgs) Handles HiddenField1.ValueChanged
        Session("ID_alojamiento") = Me.HiddenField1.Value
        Session("ID_reserva") = Me.HiddenField2.Value
        Response.Redirect("ModificarReserva.aspx")
    End Sub
End Class
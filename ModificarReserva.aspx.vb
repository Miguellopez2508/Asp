Imports MySql.Data.MySqlClient
Public Class WebForm7
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim connection As MySqlConnection
        connection = conectar()
        Dim consulta As String
        consulta = "SELECT * FROM alojamientos WHERE ID='" & Session("ID_alojamiento") & "' "
        Dim comando As New MySqlCommand(consulta)
        comando.Connection = connection
        Dim resultado As MySqlDataReader
        resultado = comando.ExecuteReader
        While resultado.Read()
            Me.NombreLabel.Text = resultado(1)
            Me.TipoLabel.Text = resultado(7)
            Me.DescripcionLabel.Text = resultado(2)
            Me.TelefonoLabel.Text = resultado(3)
            Me.EMailLabel.Text = resultado(5)
            Me.WebLabel.Text = resultado(6)
            Me.CapacidadLabel.Text = resultado(8)
            Me.TerritorioLabel.Text = resultado(13)
            Me.MunicipioLabel.Text = resultado(12)
            Me.DireccionLabel.Text = resultado(4)
            Me.CodigoPostalLabel.Text = resultado(9)
        End While
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

    Protected Sub EliminarBtn_Click(sender As Object, e As EventArgs) Handles EliminarBtn.Click
        Dim msg = "¿QUIERE ELIMINAR LA RESERVA?"
        Dim title = "ELIMINAR RESERVA"
        Dim style = MsgBoxStyle.YesNo Or MsgBoxStyle.DefaultButton2 Or
            MsgBoxStyle.Critical
        Dim response = MsgBox(msg, style, title)
        If response = MsgBoxResult.Yes Then
            MsgBox("YES, continue!!", , title)
            eliminar()
        Else
            MsgBox("NO, stop!!", , title)
        End If



    End Sub
    Sub eliminar()
        Dim connection As MySqlConnection
        connection = conectar()
        Dim consulta As String
        consulta = "DELETE FROM `reservas` WHERE `reservas`.`id`=" & Session("ID_reserva") & ""
        Dim comando As New MySqlCommand(consulta)
        comando.Connection = connection
        Dim resultado As MySqlDataReader
        resultado = comando.ExecuteReader
        connection.Close()
        Response.Redirect("MisReservas.aspx")
    End Sub

    Protected Sub HacerReservaBtn_Click(sender As Object, e As EventArgs) Handles HacerReservaBtn.Click
        Dim connection2 As MySqlConnection
        connection2 = conectar()
        Dim consulta2 As String
        consulta2 = "SELECT * FROM reservas WHERE ID='" & Session("ID_reserva") & "' "
        Dim comando2 As New MySqlCommand(consulta2)
        comando2.Connection = connection2
        Dim resultado2 As MySqlDataReader
        resultado2 = comando2.ExecuteReader
        While resultado2.Read()
            Me.FechaInicioLabel.Text = resultado2(2)
            Me.FechaFinLabel.Text = resultado2(3)
            Me.Calendar1.VisibleDate = resultado2(2)
            Me.Calendar2.VisibleDate = resultado2(3)
            Me.Calendar1.SelectedDate = resultado2(2)
            Me.Calendar2.SelectedDate = resultado2(3)
        End While
        connection2.Close()
        Me.Panel1.Visible = True
    End Sub


    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        Me.FechaInicioLabel.Text = Calendar1.SelectedDate.ToShortDateString
    End Sub

    Protected Sub Calendar2_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar2.SelectionChanged
        Me.FechaFinLabel.Text = Calendar2.SelectedDate.ToShortDateString
    End Sub

    Protected Sub VolverBtn_Click(sender As Object, e As EventArgs) Handles VolverBtn.Click
        Response.Redirect("MisReservas.aspx")
    End Sub

    Protected Sub confirmarBtn_Click(sender As Object, e As EventArgs) Handles confirmarBtn.Click
        If Me.FechaFinLabel.Text = "" Or Me.FechaInicioLabel.Text = "" Then
            MsgBox("INTRODUZCA FECHAS PARA HACER LA RESERVA")
        Else
            If Me.Calendar1.SelectedDate < Me.Calendar2.SelectedDate Or Me.Calendar1.SelectedDate = Me.Calendar2.SelectedDate Then
                Dim connection As MySqlConnection
                connection = conectar()
                Dim consulta As String
                consulta = "UPDATE reservas Set FECHA_INICIO='" & Me.Calendar1.SelectedDate.ToString("yyyy/MM/dd") & "', FECHA_FIN='" & Me.Calendar2.SelectedDate.ToString("yyyy/MM/dd") & "' WHERE id='" & Session("ID_reserva") & "'"
                Dim comando As New MySqlCommand(consulta)
                comando.Connection = connection
                Dim resultado As MySqlDataReader
                resultado = comando.ExecuteReader
                connection.Close()
                Response.Redirect("MisReservas.aspx")
            Else
                MsgBox("ORDEN DE FECHAS INCORRECTA")
            End If

        End If
    End Sub
End Class
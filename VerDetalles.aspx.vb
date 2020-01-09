Imports MySql.Data.MySqlClient
Public Class WebForm5
    Inherits System.Web.UI.Page

    Dim dni As String = "12345678H"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim connection As MySqlConnection
        connection = conectar()
        Dim consulta As String
        consulta = "SELECT * FROM alojamientos WHERE ID='" & Session("ID") & "' "
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
        'HACER TABLA HTML PARA QUE NO DE CANCER
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

    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        Me.FechaInicioLabel.Text = Me.Calendar1.SelectedDate.ToShortDateString
    End Sub

    Protected Sub Calendar2_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar2.SelectionChanged
        Me.FechaFinLabel.Text = Me.Calendar2.SelectedDate.ToShortDateString
    End Sub

    Protected Sub ReservarBtn_Click(sender As Object, e As EventArgs) Handles ReservarBtn.Click

        If Me.FechaFinLabel.Text = "" Or Me.FechaInicioLabel.Text = "" Then
            MsgBox("INTRODUZCAS FECHAS PARA HACER LA RESERVA")
        Else
            If Me.Calendar1.SelectedDate < Me.Calendar2.SelectedDate Or Me.Calendar1.SelectedDate = Me.Calendar2.SelectedDate Then
                Dim connection As MySqlConnection
                connection = conectar()
                Dim consulta As String
                consulta = "insert into reservas (DNI, FECHA_INICIO, FECHA_FIN, ID_ALOJAMIENTO) values ('" & Session("DNI") & "','" & Me.Calendar1.SelectedDate.ToString("yyyy/MM/dd") & "','" & Me.Calendar2.SelectedDate.ToString("yyyy/MM/dd") & "','" & Session("ID") & "')"
                Dim comando As New MySqlCommand(consulta)
                comando.Connection = connection
                Dim resultado As MySqlDataReader
                resultado = comando.ExecuteReader
                connection.Close()
            Else
                MsgBox("ORDEN DE FECHAS INCORRECTA")
            End If

        End If


    End Sub

    Protected Sub HacerReservaBtn_Click(sender As Object, e As EventArgs) Handles HacerReservaBtn.Click
        Me.Panel1.Visible = True
    End Sub
End Class
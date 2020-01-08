Imports MySql.Data.MySqlClient
Public Class WebForm5
    Inherits System.Web.UI.Page
    Dim identi As String = "BBI00001"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim connection As MySqlConnection
        connection = conectar()
        Dim consulta As String
        consulta = "SELECT * FROM alojamientos WHERE ID='" & identi & "' "
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
    Protected Sub ReservaBtn_Click(sender As Object, e As EventArgs) Handles ReservaBtn.Click

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




End Class
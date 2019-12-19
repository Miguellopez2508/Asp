Imports MySql.Data.MySqlClient

Public Class WebForm2
    Inherits System.Web.UI.Page

    Dim contrasenabase As String
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
    Protected Sub InicioSesionBtn_Click(sender As Object, e As EventArgs) Handles InicioSesionBtn.Click
        Dim connection As MySqlConnection
        connection = conectar()
        Dim consulta As String
        consulta = "select password from usuario where email = '" & UsuarioTB.Text & "'"
        Dim comando As New MySqlCommand(consulta)
        comando.Connection = connection
        Dim resultado As MySqlDataReader
        resultado = comando.ExecuteReader
        While resultado.Read()
            contrasenabase = resultado(0)
        End While

        If contrasenabase = Me.ContrasenaTB.Text Then
            Response.Redirect("WebForm3.aspx")
        Else
            MsgBox("Usuario o contraseña incorrecta")
            Me.ContrasenaTB.Text = ""
        End If

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Registro.aspx")
    End Sub

End Class
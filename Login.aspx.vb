Imports MySql.Data.MySqlClient

Public Class WebForm2
    Inherits System.Web.UI.Page

    Dim contrasenabase As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

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
            MsgBox("no se oudo conectar")
            Return Nothing
        End Try
    End Function
    Protected Sub InicioSesionBtn_Click(sender As Object, e As EventArgs) Handles InicioSesionBtn.Click
        Dim connection As MySqlConnection
        connection = conectar()
        Dim consulta As String
        consulta = "select password from usuario where email like '%" & Me.UsuarioTB.Text & "%' "
        Dim comando As New MySqlCommand(consulta)
        comando.Connection = connection
        Dim resultado As MySqlDataReader
        resultado = comando.ExecuteReader
        While resultado.Read()
            contrasenabase = resultado(0)
        End While

        If contrasenabase = Me.ContrasenaTB.Text Then
            Response.Redirect("WebForm2.aspx")
        Else
            MsgBox("Sos gay")
            Me.ContrasenaTB.Text = ""
        End If

    End Sub

End Class
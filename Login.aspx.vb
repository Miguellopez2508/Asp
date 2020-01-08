Imports MySql.Data.MySqlClient
Imports System.Security.Cryptography

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

        Dim hash As String = getMd5Hash(ContrasenaTB.Text)

        Try
            If contrasenabase.Equals(hash) Then
                Response.Redirect("WebForm3.aspx")
            Else
                Label1.Text = "Datos incorrectos"
                Me.UsuarioTB.Text = ""
                Me.ContrasenaTB.Text = ""
            End If
        Catch
            Label1.Text = "Datos incorrectos"
        End Try
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Registro.aspx")
    End Sub

    Function getMd5Hash(ByVal input As String) As String

        Dim md5Hasher As MD5 = MD5.Create()

        Dim data As Byte() = md5Hasher.ComputeHash(Encoding.Default.GetBytes(input))

        Dim sBuilder As New StringBuilder()

        Dim i As Integer
        For i = 0 To data.Length - 1
            sBuilder.Append(data(i).ToString("x2"))
        Next i

        Return sBuilder.ToString()

    End Function

End Class
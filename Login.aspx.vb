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

        Dim hash As String = getMd5Hash(UsuarioTB.Text)

        If verifyMd5Hash(contrasenabase, hash) Then
            Response.Redirect("WebForm3.aspx")
        Else
            MsgBox("Usuario o contraseña incorrecta")
            Me.ContrasenaTB.Text = ""
        End If

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Registro.aspx")
    End Sub

    Function verifyMd5Hash(ByVal input As String, ByVal hash As String) As Boolean

        Dim hashOfInput As String = getMd5Hash(input)

        Dim comparer As StringComparer = StringComparer.OrdinalIgnoreCase

        If 0 = comparer.Compare(hashOfInput, hash) Then
            Return True
        Else
            Return False
        End If

    End Function

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
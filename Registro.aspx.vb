Imports MySql.Data.MySqlClient
Public Class WebForm1
    Inherits System.Web.UI.Page

    Dim dni As String
    Dim nombre As String
    Dim apellidos As String
    Dim email As String
    Dim telefono As Integer
    Dim password As String

    Protected Sub Registrar_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim confirmarPassword As String

        nombre = TextBox1.Text
        apellidos = TextBox2.Text
        dni = TextBox3.Text
        email = TextBox4.Text
        telefono = TextBox5.Text
        password = TextBox6.Text
        confirmarPassword = TextBox7.Text

        insertarDatos()

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session("Conectar") = System.Web.Configuration.WebConfigurationManager.AppSettings("ConectarMySQL").ToString
    End Sub

    Protected Sub insertarDatos()

        Try
            Dim cn As New MySqlConnection()
            cn.ConnectionString = Session("Conectar")
            Dim Ds As New DataSet
            Dim Da As New MySqlDataAdapter("insert into usuario (DNI, NOMBRE, APELLIDOS, EMAIL, TELEFONO, PASSWORD, TIPO) values ('" & dni & "','" & nombre & "','" & apellidos & "','" & email & "'," & telefono & "," & "md5('" & password & "')" & "," & 0 & ")", cn)
            Da.Fill(Ds, "usuario")
            cn.Close()
            Response.Write("<script>window.alert('Se ha logeado correctamente');</script>" + "<script>window.setTimeout(location.href='Login.aspx', 1000);</script>")
            Response.Redirect("Login.aspx")
        Catch err As Exception

            Label8.Text = err.Message
        End Try
    End Sub

    Protected Sub Cancelar_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Login.aspx")
    End Sub

End Class
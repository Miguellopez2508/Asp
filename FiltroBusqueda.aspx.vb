Imports MySql.Data.MySqlClient
Imports System.Data
Imports System.Text

Public Class WebForm4
    Inherits System.Web.UI.Page
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
            MsgBox("no se pudo conectar")
            Return Nothing
        End Try
    End Function
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Dim connection As MySqlConnection
        'connection = conectar()
        'Dim consulta As String
        'consulta = "SELECT * FROM alojamientos"
        'Dim comando As New MySqlCommand(consulta)
        'comando.Connection = connection
        'Dim resultado As MySqlDataReader
        'resultado = comando.ExecuteReader
        'While resultado.Read()
        ' Me.ResultadoTabla.Text += "" & resultado(1) & ", " & resultado(4) & ", " & resultado(12) & " , " & resultado(12) & "<button id=" & resultado(0) & " OnClick=prueba>RESERVAR</button><br>"
        ' End While

        'connection.Close()
    End Sub

    Protected Sub BuscarBtn_Click(sender As Object, e As EventArgs) Handles BuscarBtn.Click
        Me.ResultadoTabla.Text = ""
        Dim connection As MySqlConnection
        connection = conectar()
        Dim consulta As String
        consulta = "SELECT * FROM alojamientos WHERE "
        Dim anadimos As String = ""
        If Not String.IsNullOrEmpty(Me.NombreTB.Text) Then
            If Not String.IsNullOrEmpty(anadimos) Then
                anadimos += " AND "
            End If
            anadimos += " LOWER(nombre) like LOWER('%" & Me.NombreTB.Text & "%')"
        End If
        If Not String.IsNullOrEmpty(Me.alojamientoDDL.SelectedValue.ToString) Then
            If Not String.IsNullOrEmpty(anadimos) Then
                anadimos += " AND "
            End If
            anadimos += " LOWER(tipo) like LOWER('%" & Me.alojamientoDDL.SelectedValue.ToString & "%')"
        End If
        If Not String.IsNullOrEmpty(Me.provinciaDDL.SelectedValue.ToString) Then
            If Not String.IsNullOrEmpty(anadimos) Then
                anadimos += " AND "
            End If
            anadimos += " LOWER(territorio) like LOWER('%" & Me.provinciaDDL.SelectedValue.ToString & "%')"
        End If
        If Not String.IsNullOrEmpty(Me.MunicipioTB.Text) Then
            If Not String.IsNullOrEmpty(anadimos) Then
                anadimos += " AND "
            End If
            anadimos += " LOWER(municipio) like LOWER('%" & Me.MunicipioTB.Text & "%')"
        End If

        If anadimos = "" Then
            Me.ResultadoTabla.Text = "Messi alto pechofrio la concha de su madre"
        Else
            consulta += anadimos
            Dim comando As New MySqlCommand(consulta)
            comando.Connection = connection
            Dim resultado As MySqlDataReader
            resultado = comando.ExecuteReader


            Me.ResultadoTabla.Text = "<table><tr><th>NOMBRE</th><th>TIPO</th><th>TERRITORIO</th><th>MUNICIPIO</th><tr>"
            While resultado.Read()
                'Me.ResultadoTabla.Text += "" & resultado(1) & ", " & resultado(4) & ", " & resultado(12) & " , " & resultado(12) & " " & btn
                Me.ResultadoTabla.Text += "<tr><td>" & resultado(1) & "</td><td>" & resultado(4) & "</td><td>" & resultado(12) & "</td><td>" & resultado(13) & "</td><td><button OnClick=" & "testing('" & resultado(0) & "') >Ver detalles</button></td></tr>"
            End While
            Me.ResultadoTabla.Text += "</table>"
        End If




        connection.Close()
    End Sub

    Private Sub verdetalles(sender As Object, e As EventArgs)
        MsgBox("HoLa")
    End Sub

    Protected Sub ReservasBtn_Click(sender As Object, e As EventArgs) Handles ReservasBtn.Click
        Response.Redirect("MisReservas.aspx")
    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        Session("ID") = Me.TextBox1.Text
        Response.Redirect("VerDetalles.aspx")
    End Sub
End Class
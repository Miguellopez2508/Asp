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
        Dim connection As MySqlConnection
        connection = conectar()
        Dim consulta As String
        consulta = "SELECT * FROM alojamientos"
        Dim comando As New MySqlCommand(consulta)
        comando.Connection = connection
        Dim resultado As MySqlDataReader
        resultado = comando.ExecuteReader
        Me.ResultadoTabla.Text += " <div class=" & "tbl-header" & "><table><thead><tr><th>NOMBRE</th><th>TIPO</th><th>TERRITORIO</th><th>MUNICIPIO</th><th>DETALLES</th></tr></thead></div></table> <div class= " & "tbl-content" & "><table cellpadding=" & "0 " & " cellspacing=" & "0 " & " border=" & "0 " & "><tbody>"
        While resultado.Read()
            'Me.ResultadoTabla.Text += "" & resultado(1) & ", " & resultado(4) & ", " & resultado(12) & " , " & resultado(12) & " " & btn
            Me.ResultadoTabla.Text += "<tr><td>" & resultado(1) & "</td><td>" & resultado(4) & "</td><td>" & resultado(12) & "</td><td>" & resultado(13) & "</td><td><button OnClick=" & "testing('" & resultado(0) & "') >Ver detalles</button></td></tr>"
        End While
        Me.ResultadoTabla.Text += "</tbody></table>"
        connection.Close()
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
            Me.ResultadoTabla.Text = "Ningún Filtro seleccionado"
        Else
            consulta += anadimos
            Dim comando As New MySqlCommand(consulta)
            comando.Connection = connection
            Dim resultado As MySqlDataReader
            resultado = comando.ExecuteReader

            If resultado.HasRows Then
                Me.ResultadoTabla.Text += " <div class=" & "tbl-header" & "><table><thead><tr><th>NOMBRE</th><th>TIPO</th><th>TERRITORIO</th><th>MUNICIPIO</th><th>DETALLES</th></tr></thead></div></table> <div class= " & "tbl-content" & "><table cellpadding=" & "0 " & " cellspacing=" & "0 " & " border=" & "0 " & "><tbody>"
                While resultado.Read()
                    'Me.ResultadoTabla.Text += "" & resultado(1) & ", " & resultado(4) & ", " & resultado(12) & " , " & resultado(12) & " " & btn
                    Me.ResultadoTabla.Text += "<tr><td>" & resultado(1) & "</td><td>" & resultado(4) & "</td><td>" & resultado(12) & "</td><td>" & resultado(13) & "</td><td><button OnClick=" & "testing('" & resultado(0) & "') >Ver detalles</button></td></tr>"
                End While
                Me.ResultadoTabla.Text += "</tbody></table>"
            Else
                Me.ResultadoTabla.Text = "NINGUN RESULTADO OBTENIDO"
            End If
        End If
        connection.Close()
    End Sub

    Protected Sub ReservasBtn_Click(sender As Object, e As EventArgs) Handles ReservasBtn.Click
        Response.Redirect("MisReservas.aspx")
    End Sub

    Protected Sub HiddenField1_ValueChanged(sender As Object, e As EventArgs) Handles HiddenField1.ValueChanged
        Session("ID") = Me.HiddenField1.Value
        Response.Redirect("VerDetalles.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Login.aspx")
        Session.Contents.RemoveAll()
    End Sub
End Class
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

            Dim dt As DataTable = New DataTable
            dt.Columns.AddRange(New DataColumn() {New DataColumn("Nombre", GetType(System.String)), New DataColumn("Name", GetType(System.String)), New DataColumn("Country", GetType(System.String)), New DataColumn("municipio", GetType(System.String)), New DataColumn("reserva", GetType(System.Web.UI.WebControls.Button))})


            While resultado.Read()



                Dim btn = New Button()
                btn.ID = resultado(0)
                btn.Text = "Ver Detalles"
                AddHandler btn.Click, AddressOf verdetalles

                'Me.ResultadoTabla.Text += "" & resultado(1) & ", " & resultado(4) & ", " & resultado(12) & " , " & resultado(12) & " " & btn
                dt.Rows.Add(resultado(1), resultado(4), resultado(12), resultado(13), btn)

            End While
            Dim sb As StringBuilder = New StringBuilder()

            sb.Append("<table cellpadding='5' cellspacing='0' style='border: 1px solid #ccc;font-size: 9pt;font-family:Arial'>")
            'Adding HeaderRow.
            sb.Append("<tr>")
            For Each column As DataColumn In dt.Columns
                sb.Append(("<th style='background-color: #B8DBFD;border: 1px solid #ccc'>" _
                                + (column.ColumnName + "</th>")))
            Next
            sb.Append("</tr>")
            'Adding DataRow.
            For Each row As DataRow In dt.Rows
                sb.Append("<tr>")
                For Each column As DataColumn In dt.Columns
                    sb.Append(("<td style='width:100px;border: 1px solid #ccc'>" _
                                    + (row(column.ColumnName).ToString + "</td>")))
                Next
                sb.Append("</tr>")
            Next
            'Table end.
            sb.Append("</table>")
            Me.ResultadoTabla0.Text = sb.ToString
        End If




        connection.Close()
    End Sub

    Private Sub verdetalles(sender As Object, e As EventArgs)
        MsgBox("HoLa")
    End Sub

    Protected Sub ReservasBtn_Click(sender As Object, e As EventArgs) Handles ReservasBtn.Click
        Response.Redirect("MisReservas.aspx")
    End Sub
End Class
Imports MySql.Data.MySqlClient
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

    End Sub

    Protected Sub BuscarBtn_Click(sender As Object, e As EventArgs) Handles BuscarBtn.Click
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
            consulta = "SELECT * FROM alojamientos"
        End If

        consulta += anadimos
        Dim comando As New MySqlCommand(consulta)
        comando.Connection = connection
        Dim resultado As MySqlDataReader
        resultado = comando.ExecuteReader



        While resultado.Read()

            'Me.resultadolabel.Text += "" & resultado(1) & ", " & resultado(4) & ", " & resultado(12) & " , " & resultado(12) & ""


            Dim btn As New Button
            btn.ID = resultado(0)
            btn.Text = "Ver Detalles"
            AddHandler btn.Click, AddressOf verdetalles

            'dt.Rows.Add(resultado(1), resultado(7), resultado(12), resultado(13), btn)


        End While

        connection.Close()
    End Sub

    Private Sub verdetalles(sender As Object, e As EventArgs)
        MsgBox("HoLa")
    End Sub

    '*<button id=" & resultado(0) & " OnClick=prueba>RESERVAR</button><br>" */
End Class
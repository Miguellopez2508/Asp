
Imports MySql.Data.MySqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session("Conectar") = System.Web.Configuration.WebConfigurationManager.AppSettings("ConectarMySQL").ToString
        If Not Page.IsPostBack Then
            llamarDatos()
        End If
    End Sub

    Protected Sub llamarDatos()

        Try
            Dim cn As New MySqlConnection()
            cn.ConnectionString = Session("Conectar")
            Dim Ds As New DataSet
            Dim Da As New MySqlDataAdapter("insert into usuario (DNI, NOMBRE, APELLIDOS, EMAIL) values ('aa3','bb','cc','dd')", cn)
            Da.Fill(Ds, "usuario")
            GridView1.DataSource = Ds.Tables("usuario")
            GridView1.DataBind()
        Catch err As Exception
            Label8.Text = err.Message
        End Try
    End Sub

End Class
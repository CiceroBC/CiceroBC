
Partial Class CBCTheatreEnter
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Entities.Insert()
    End Sub
End Class

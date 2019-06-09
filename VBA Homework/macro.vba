Attribute VB_Name = "Module1"
Dim ticker As String
Dim summary_row As Integer
Dim current_volume As Integer
Sub StockData()
    summary_row = 2
    For Each ws In Worksheets
        LastRow = ws.Cells(Rows.Count, 1).End(xlUp).Row
        ws.Cells(1, 9).Value = "Ticker"
        ws.Cells(1, 10).Value = "Total Stock Volume"
        For i = 2 To LastRow
            If Cells(i + 1, 1).Value <> Cells(i, 1).Value Then
                ticker = ws.Cells(i, 1).Value
                ws.Cells(summary_row, 9).Value = ticker
                ws.Cells(summary_row, 10).Value = current_svolume
                summary_row = summary_row + 1
                current_volume = 0
                ' Can't figure out why current_volume isn't going back to 0 after the above line
            Else
                current_volume = current_volume + ws.Cells(i, 7).Value
            End If
        Next i
    Next ws
End Sub
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

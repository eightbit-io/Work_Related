Sub sendEmail()
    Dim PdfFile As String, Title As String
    Dim OutApp As Object
    Dim OutMail As Object
    Dim strbody As String
    
    Title = "Title" & Format(Now, "yymmdd")
    
'This script is currently set up for powerpoint(i.e. ActivePresentation.foo). 
'Will need to modify export part to work with excel etc.

'Export part
    PdfFile = ActivePresentation.Path & "\" & Title & ".pdf"
    DocRegister = "\\Document Control\Import\" & Title & ".pdf"
    
    'export pdfs
    ActivePresentation.ExportAsFixedFormat DocRegister, ppFixedFormatTypePDF, ppFixedFormatIntentPrint
    ActivePresentation.ExportAsFixedFormat PdfFile, ppFixedFormatTypePDF, ppFixedFormatIntentPrint 
    'redundant I know but good to have copy in working folder instead of hunting down in the doc regerster.
 
'Email part
    Set OutApp = CreateObject("Outlook.Application")
    Set OutMail = OutApp.CreateItem(0)

    strbody = "<body>All, <br><br>" & _
              "Please find attached the foobar <br>" & _
              "If there are any questions please let me know.<br>" & _
              "<br><br>Cheers</body>"

   'Send email
    With OutMail
        .Display
        '.To = "MyEmail"          'Safety when testing.
        .To = "Mailing list"      'Comment this out when testing. Can use mailing list or insert individual emails... 
        .CC = ""                  'Can link to cell in excel
        .BCC = ""
        .Subject = "FooBar" & Format(Now, "yymmdd")
        .HTMLBody = strbody & "<br>" & .HTMLBody
        .Attachments.Add PdfFile
    End With

    On Error GoTo 0


 
End Sub

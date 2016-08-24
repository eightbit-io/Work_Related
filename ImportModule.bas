Attribute VB_Name = "ImportModule"
Option Explicit

Sub Import()
'Import files to document register subroutine. All functions are in the "Functions" module

    Dim objFSO As Object
    Dim objFolder As Object
    Dim objFile As Object
    Dim MyPath As String
    Dim newName As String
    Dim strPath As String
    strPath = "\\Destination\"
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    Set objFolder = objFSO.GetFolder("\\Destination\Import")
    Dim destinationFile As String
    Dim docFolder As String
    Dim subFolder As String
    Dim docType As String
    Dim upperName As String
          
    

For Each objFile In objFolder.Files

    ' TODO: if object has already been imported... add import date to end?
    
    If isScannedFile(objFile.Name) Then objFile.Name = renameFile(objFile)  ' if scanned file prompt for rename

    docType = prefix(objFile.Name)                                          'find filename prefix
    subFolder = findFolder(docType)                                         'find matching folder ie. PLAN -> 
    If subFolder = "Incorrect Prefix" Then Exit Sub                         'kills sub if no matching folder. findFolder has already prompted to rename

    destinationFile = strPath & subFolder & "\" & objFile.Name
    objFile.Move destinationFile                                            'Move file to correct folder

    Dim docRegLocText As String                                             'Shortened string for Doc Register hyperlink text ie "SAFETY\SAFETY_Fire Map.pdf"
    docRegLocText = subFolder & "\" & objFile.Name

    Call addToDocRegister(objFile.Name, docType, objFile.DateCreated, destinationFile, docRegLocText)
    
Next
    ActiveWorkbook.Save
    MsgBox "Import complete: please check for errors "

End Sub

'Module Functions
    'these functions are generally stored in another module for brevity


Option Explicit
'This module contains the helper functions used in the import module. Please read there first.

Function isScannedFile(filename As String)
' uses a regex to identify scanned files returns true or false, for use in if statement

'Regular expression"
' a regular expression (abbreviated regex or regexp) is a sequence of characters that define
' a search pattern, mainly for use in pattern matching with strings, or string matching.
' https://en.wikipedia.org/wiki/Regular_expression
' http://stackoverflow.com/questions/22542834/how-to-use-regular-expressions-regex-in-microsoft-excel-both-in-cell-and-loops

    Dim regex As New RegExp
            
        With regex
            .Global = True
            .MultiLine = True
            .IgnoreCase = False
            .Pattern = "\d{4}_\d{3}.pdf$"    'Matches 4 digits followed by an underscore then 3 digits
        End With

        If regex.test(filename) Then
           isScannedFile = True
        Else
            isScannedFile = False
        End If

End Function


Function renameFile(objFile As Object)
' prompts to rename file.
Dim newName As String

        newName = InputBox("New Name", "Rename Scanned File", objFile.Name)
            If InStr(1, newName, ".pdf") < 1 Then newName = newName & ".pdf"      'if .pdf isn't in the string add to end of string
            
        renameFile = UCase(newName)

End Function

Function prefix(filename)
'Uses regex to get the first part of a file name before a space or an underscore and return that string
    
    Dim regex As New RegExp
            
    With regex
        .Global = True
        .MultiLine = True
        .IgnoreCase = False
        .Pattern = "^([a-zA-Z]+)"       ' Check out how regex can return groups
    End With

    If regex.test(filename) Then
       prefix = regex.Execute(filename)(0)
    Else
        prefix = "error"
    End If


End Function
Function findFolder(prefix)
'finds the folder that matches the prefix ie. PLAN -> "PLAN - Dig and Dump Plans"
    
    Dim regex As New RegExp
    Dim objFSO As Object
    Dim objFolder As Object
    Dim subFolder As Object
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    Set objFolder = objFSO.GetFolder("\\Destination\")

    With regex
        .Global = True
        .MultiLine = True
        .IgnoreCase = True
        .Pattern = "^" & prefix         'Finds prefix at the start of a folder name. All folders must be in this format.
    End With

For Each subFolder In objFolder.SubFolders
    If regex.test(subFolder.Name) Then
           findFolder = subFolder.Name
           Exit Function
    End If

Next

MsgBox "Incorrect Prefix. Please Rename or Create new folder. " & prefix        'Prompt warning to rename
findFolder = "Incorrect Prefix"                                                 'returns "Incorrect Prefix" for the main sub to trigger kill switch


End Function



Sub addToDocRegister(BaseName, docFolder, DateCreated, hypLocation, locationText)
'Adds files to the Doc Register

    Dim nextrow As Integer
    
    nextrow = Application.WorksheetFunction.CountA(Range("A:A")) + 2
    Cells(nextrow, 1) = BaseName
    Cells(nextrow, 2) = docFolder
    Cells(nextrow, 3) = DateCreated
    ActiveSheet.Hyperlinks.Add Cells(nextrow, 4), hypLocation, , , locationText


End Sub

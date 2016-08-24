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
    strPath = "\\CMB-DC02\06_Technical_Services\02 Document Control\"
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    Set objFolder = objFSO.GetFolder("\\CMB-DC02\06_Technical_Services\02 Document Control\Import")
    Dim destinationFile As String
    Dim docFolder As String
    Dim subFolder As String
    Dim docType As String
    Dim upperName As String
          
    

For Each objFile In objFolder.Files

    ' TODO: if object has already been imported... add import date to end?
    
    If isScannedFile(objFile.Name) Then objFile.Name = renameFile(objFile)  ' if scanned file prompt for rename

    docType = prefix(objFile.Name)                                          'find filename prefix
    subFolder = findFolder(docType)                                         'find matching folder ie. PLAN -> "PLAN - Dig and Dump Plans"
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

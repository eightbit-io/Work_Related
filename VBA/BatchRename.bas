Attribute VB_Name = "BatchRename"
Option Explicit

Sub BatchRename()
'Batch renamer for changing existing file names

    Dim objFSO As Object
    Dim objFolder As Object
    Dim objFile As Object
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    Set objFolder = objFSO.GetFolder("\foobar") ' put folder here

For Each objFile In objFolder.Files
    
    Dim regex As New RegExp
'Regular expression"
' a regular expression (abbreviated regex or regexp) is a sequence of characters that define
' a search pattern, mainly for use in pattern matching with strings, or string matching.
' https://en.wikipedia.org/wiki/Regular_expression
' http://stackoverflow.com/questions/22542834/how-to-use-regular-expressions-regex-in-microsoft-excel-both-in-cell-and-loops
            
            
            
        With regex
            .Global = True
            .MultiLine = True
            .IgnoreCase = False
            .Pattern = "B"    'Change pattern here.
            
        End With
        
        objFile.Name = regex.Replace(objFile.Name, "_B")

    
Next

End Sub


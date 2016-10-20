

' Purpose : This script automates the exceedingly manual task of entering trains into sap.
' Assumptions : SAP must already be running in the background. 
' Effects : Nil Yet
' Inputs: CSV file of trains taken from the CHPP report in the format:
'        Date,Shift,Con Note	Start Time,End Time	Total Time (Hrs/Mins),CV104 start,CV104 Finish,CV104 Weight,QR Weigher,Total Tonnes,Product	Bypass,Product Buckets,Bypass Buckets,Blend Ratio,Comment
'         It's probably work simplifying this at some point
' Return Values: Nil

    MsgBox "Welcome to the Wizz Bang Train Proccess Order and Confirmation system." & vbCrLf & "I'm here to make your life easier." , 0 ,"Wizz Bang Train Proccess Order and Confirmation system"

    trainFileLocation = SelectFile()
    IF trainFileLocation = "" THEN Wscript.Quit
    set trainFile = ReadCSVFile(trainFileLocation)
    'set SapSession = CreateSAPConnection()

    Do Until trainFile.AtEndOfStream
        train = trainFile.ReadLine

            trainFields     =   Split(train, ",")   
            Tonage          =   trainFields(10)
            trainDate       =   trainFields(0)
            trainID         =   trainFields(2)
            washTonnage     =   trainFields(11)
            bypassTonnage   =   trainFields(12)
            ' if washTonnage + bypassTonnage == tonage Then 

            Call CreateProcessOrder(SapSession,trainID, trainDate, Tonage)
            Call ConfirmProcessOrder(SapSession, Tonage, washTonnage, bypassTonnage, trainDate)
    Loop

    trainFile.Close
    MsgBox("Process Complete")




'Functions
Sub CreateProcessOrder(session, trainID, trainDate, Tonage)
    ' Purpose : This Function actually creates the process orders in SAP
    ' Assumptions :	SAP must be running? session = CreateSAPConnection
    ' Effects : Describes the effect the procedure has on each external variable, control, or other element
    ' Inputs: session trainID, trainDate, Tonage Values that have been 
    ' Return Values: Nil


    session.findById("wnd[0]").maximize
    session.StartTransaction("COR1")

    session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
    session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
    session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
    session.findById("wnd[0]/tbar[0]/btn[0]").press


    ' session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = Tonage
    ' session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = trainDate
    ' session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = trainDate

    ' session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select    'Select Logistics
    ' session.findById("wnd[0]").sendVKey 0                               'Enter Past Date 
    ' session.findById("wnd[0]").sendVKey 0                               'Enter Past Date 

    ' session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = trainID
    ' session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = trainDate
    ' session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
    ' session.findById("wnd[0]/tbar[0]/btn[11]").press ' Save

End Sub

Function SelectFile()
    ' Purpose : This Function opens a dialog box to select the file containing the csv of trains
    ' Assumptions :	file is a csv of trains
    ' Effects : Describes the effect the procedure has on each external variable, control, or other element
    ' Inputs: nil
    ' Return Values: returns string of file location to to create an object

    Set wShell=CreateObject("WScript.Shell")
    Set oExec=wShell.Exec("mshta.exe ""about:<input type=file id=FILE><script>FILE.click();new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);close();resizeTo(0,0);</script>""")
    SelectFile = oExec.StdOut.ReadLine

End Function


Function ReadCSVFile(location)
    'Create file object
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    Set ReadCSVFile = objFSO.OpenTextFile(location, 1)

End Function   

Function CreateSAPConnection()
    
    If Not IsObject(application) Then
    Set SapGuiAuto  = GetObject("SAPGUI")
    Set application = SapGuiAuto.GetScriptingEngine
    End If
    If Not IsObject(connection) Then
    Set connection = application.Children(0)
    End If
    If Not IsObject(session) Then
    Set CreateSAPConnection = connection.Children(0)
    End If

    If IsObject(WScript) Then
    WScript.ConnectObject CreateSAPConnection,     "on"
    WScript.ConnectObject application, "on"
    End If

    'CreateSAPConnection 
End Function

Sub ConfirmProcessOrder(session, tonage, washTonnage, bypassTonnage, trainDate)
'Stub

End sub


' TODO
' 1 check object is trains csv
' 2 Check CSV Values are valid
' 3 enter coal dirt wash etc confirmations.
' 4 Strip blank lines from CSV. ie ",,,,,,,," 
' 5 create complete label / error label, and check for before calling CreateProcessOrder
' 6 create COOISPI function.
' 7 check object is trains csv
' 8 enter coal dirt wash etc confirmations.
' 9 Strip blank lines. ie ",,,,,,,," 
' 10 create complete label / error label, and check for before calling CreateProcessOrder
' 11 Check Values are valid

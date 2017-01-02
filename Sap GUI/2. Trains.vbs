'======================================================================================================================
'   / Trains - Proccess Order / 
'                                                                                                                                   
'   This script automates the exceedingly manual task of entering trains into sap.
'   You will need to have SAP already running in another window. Then double click on the script to run.
'  
'   Inputs: CSV file of trains taken from the CHPP report in the current format:
'
'   Created By Chris Saunders (October 2016)
'   Last Updated : 2017-01-03
'======================================================================================================================
' TODO
' [ ] check object is trains csv
' [ ] Check CSV Values are valid
' [ ] Enter coal dirt wash etc confirmations.
' [ ] Strip blank lines from CSV. ie ",,,,,,,," 
' [ ] Create complete label / error label, and check for before calling CreateProcessOrder
' [ ] Create COOISPI function.
' [ ] Enter coal dirt wash etc confirmations.
' [ ] Create complete label / error label, and check for before calling CreateProcessOrder
' [ ] Check Values are valid
'======================================================================================================================

    WelcomeMessage = "Welcome to the Automatic Train Proccess Order and Confirmation system." & vbCrLf _
                    & "I'm here to make your life easier." & vbCrLf & vbCrLf _
                    & "Please Select a CSV of the trains you wish to process"
                    'TODO : Come up with an Acronym

    MsgBox  WelcomeMessage, 0 ,"Automatic Train Proccess Order and Confirmation system"

    trainFileLocation = SelectFile()
    set trainFile = ReadCSVFile(trainFileLocation)
    set SapSession = CreateSAPConnection()
    
    x = 3   'Counter for train batch number
    
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
            'Call ConfirmProcessOrder(SapSession, Tonage, washTonnage, bypassTonnage, trainDate)
            x = x+1
    Loop

    trainFile.Close
    MsgBox("Process Complete")




'Functions
Sub CreateProcessOrder(session, trainID, trainDate, Tonage)
    
    ' Purpose : This Function actually creates the process orders in SAP

    session.findById("wnd[0]").maximize
    session.StartTransaction("COR1")

    session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
    session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
    session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
    session.findById("wnd[0]/tbar[0]/btn[0]").press

    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = Tonage
    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = trainDate
    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = trainDate

    
    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOWE").select    'Select Goods Reciept
    session.findById("wnd[0]").sendVKey 0                               'Enter Past Date 
    session.findById("wnd[0]").sendVKey 0                               'Enter Past Date 
    
     
    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOWE/ssubSUBSCR_5115:SAPLCOKO:5190/ctxtAFPOD-CHARG").text = "CD" & "161231" & x 
    session.findById("wnd[0]").maximize
    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
    session.findById("wnd[1]/usr/btnSPOP-VAROPTION1").press
    
    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select    'Select Logistics
    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = trainID
    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = trainDate
    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
    
    session.findById("wnd[0]/tbar[1]/btn[7]").press
    session.findById("wnd[0]/usr/tblSAPLCOMKTCTRL_5120/txtRESBD-MENGE[4,1]").text = bypassTonnage
    session.findById("wnd[0]/usr/tblSAPLCOMKTCTRL_5120/txtRESBD-MENGE[4,3]").text = washTonnage
    session.findById("wnd[0]/tbar[0]/btn[11]").press ' Save
    session.findById("wnd[0]").sendVKey 0   
    session.findById("wnd[0]").sendVKey 0
    session.findById("wnd[1]/usr/btnSPOP-OPTION1").press


End Sub

Function SelectFile()
    ' Purpose : This Function opens a dialog box to select the file containing the csv of trains
    ' Assumptions :	file is a csv of trains
    ' Return Values: returns string of file location to to create an object

    Set wShell=CreateObject("WScript.Shell")
    Set oExec=wShell.Exec("mshta.exe ""about:<input type=file id=FILE><script>FILE.click();new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);close();resizeTo(0,0);</script>""")
    SelectFile = oExec.StdOut.ReadLine
    IF SelectFile = "" THEN Wscript.Quit

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




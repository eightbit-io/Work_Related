'Const ForReading = 1

'select file dialog box:
'Set wShell=CreateObject("WScript.Shell")
'Set oExec=wShell.Exec("mshta.exe ""about:<input type=file id=FILE><script>FILE.click();new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);close();resizeTo(0,0);</script>""")
'sFileSelected = oExec.StdOut.ReadLine
'wscript.echo sFileSelected

' Create file object
'Set objFSO = CreateObject("Scripting.FileSystemObject")
'Set objFile = objFSO.OpenTextFile(sFileSelected, ForReading)

'TODO: check object is trains csv
'TODO: enter coal dirt wash etc confirmations.



' Do something with file object
If Not IsObject(application) Then
   Set SapGuiAuto  = GetObject("SAPGUI")
   Set application = SapGuiAuto.GetScriptingEngine
End If
If Not IsObject(connection) Then
   Set connection = application.Children(0)
End If
If Not IsObject(session) Then
   Set session    = connection.Children(0)
End If
If IsObject(WScript) Then
   WScript.ConnectObject session,     "on"
   WScript.ConnectObject application, "on"
End If
session.findById("wnd[0]").maximize
session.StartTransaction("COR1")

'Values
Tonage = "2000"
trainDate = "10.10.16"
trainID = "LIsomething"


session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press


session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = Tonage
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = trainDate
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = trainDate

session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select    'Select Logistics
session.findById("wnd[0]").sendVKey 0                               'Enter Past Date 
session.findById("wnd[0]").sendVKey 0                               'Enter Past Date 

session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = trainID
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = trainDate
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]").sendVKey 0 ' replace with whatever save is.




'Stuff for C00ispsi
'session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").setCurrentCell 6,"ZZTRAINID"
' check zztrainid.value? = trainID?

'session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"


'Do Until objFile.AtEndOfStream

 '   strLine = objFile.ReadLine

  '  arrFields = Split(strLine, ",")
 
   ' msgbox (arrFields(2) & " " & arrFields(0) & " " & arrFields(10))

'Loop

'objFile.Close

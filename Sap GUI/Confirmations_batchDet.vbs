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
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0520/tblSAPLCOWBTCTRL_0520/ctxtCOWB_COMP-MATNR[0,1]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0520/tblSAPLCOWBTCTRL_0520/ctxtCOWB_COMP-MATNR[0,1]").caretPosition = 0
session.findById("wnd[0]/usr/btnCHFI").press
session.findById("wnd[0]/tbar[1]/btn[5]").press
session.findById("wnd[0]/tbar[1]/btn[5]").press
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").currentCellRow = 3
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_CONF_TYPE:SAPLCORU_S:0105/cmbAFRUD-AUERU").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_CONF_TYPE:SAPLCORU_S:0105/cmbAFRUD-AUERU").key = "X"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "1961"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").caretPosition = 4
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").text = "11.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").text = "11.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-IEDD").text = "11.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").caretPosition = 8
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500").getAbsoluteRow(1).selected = true
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500").getAbsoluteRow(2).selected = true
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,1]").text = "654"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,2]").text = "1307"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-MATNR[0,2]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-MATNR[0,2]").caretPosition = 0
session.findById("wnd[0]/usr/btnCHFI").press
session.findById("wnd[0]/tbar[1]/btn[5]").press
session.findById("wnd[0]/tbar[1]/btn[5]").press
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").currentCellRow = 4
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_CONF_TYPE:SAPLCORU_S:0105/cmbAFRUD-AUERU").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_CONF_TYPE:SAPLCORU_S:0105/cmbAFRUD-AUERU").key = "X"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "1994"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").caretPosition = 4
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").text = "11.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").text = "11.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-IEDD").text = "11.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").caretPosition = 8
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,1]").text = "665"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,2]").text = "1329"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,2]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,2]").caretPosition = 17
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").currentCellRow = 5
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_CONF_TYPE:SAPLCORU_S:0105/cmbAFRUD-AUERU").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_CONF_TYPE:SAPLCORU_S:0105/cmbAFRUD-AUERU").key = "X"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "1940"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").caretPosition = 4
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").text = "11.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").text = "11.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-IEDD").text = "11.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").caretPosition = 8
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500").getAbsoluteRow(1).selected = true
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500").getAbsoluteRow(2).selected = true
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,1]").text = "647"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,2]").text = "1293"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-MATNR[0,2]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-MATNR[0,2]").caretPosition = 0
session.findById("wnd[0]/usr/btnCHFI").press

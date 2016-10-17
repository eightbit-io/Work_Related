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
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ECKST-LOW").text = "1.10.16"
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ECKST-HIGH").text = "30.10.16"
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ECKST-HIGH").setFocus
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ECKST-HIGH").caretPosition = 8
session.findById("wnd[0]/tbar[1]/btn[8]").press
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").currentCellColumn = "ZZTRAINID"
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_CONF_TYPE:SAPLCORU_S:0105/cmbAFRUD-AUERU").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_CONF_TYPE:SAPLCORU_S:0105/cmbAFRUD-AUERU").key = "X"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "1987"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").caretPosition = 4
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").text = "1.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").text = "1.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-IEDD").text = "1.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").caretPosition = 7
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500").getAbsoluteRow(1).selected = true
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500").getAbsoluteRow(2).selected = true
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500").columns.elementAt(-1).width = 2
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,1]").text = "662"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,2]").text = "1325"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-MATNR[0,2]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-MATNR[0,2]").caretPosition = 0
session.findById("wnd[0]/usr/btnCHFI").press
session.findById("wnd[0]/tbar[1]/btn[5]").press
session.findById("wnd[0]/tbar[1]/btn[5]").press
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").currentCellRow = 1
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_CONF_TYPE:SAPLCORU_S:0105/cmbAFRUD-AUERU").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_CONF_TYPE:SAPLCORU_S:0105/cmbAFRUD-AUERU").key = "X"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "1899"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").caretPosition = 4
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").text = "4.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").text = "4.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-IEDD").text = "4.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").caretPosition = 7
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,1]").text = "633"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,2]").text = "1266"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,2]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,2]").caretPosition = 17
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").currentCellRow = 2

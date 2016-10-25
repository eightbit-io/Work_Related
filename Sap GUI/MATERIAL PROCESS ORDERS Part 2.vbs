
Sub ConfirmActaul()
session.findById("wnd[0]").maximize
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "59400"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").caretPosition = 5
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-IEDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET5:SAPLCORU_S:0900/subSLCUST:SAPLXCOF:0900/ctxtAFRUD-ZZPLY").text = "MA1"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").caretPosition = 8
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").text = "MA1"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").caretPosition = 3
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "37400"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").caretPosition = 5
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-IEDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").caretPosition = 8
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/tbar[0]/btn[3]").press
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET5:SAPLCORU_S:0900/subSLCUST:SAPLXCOF:0900/ctxtAFRUD-ZZPLY").text = "MA2B"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET6:SAPLCORU_S:0400/ctxtAFRUD-PERNR").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET6:SAPLCORU_S:0400/ctxtAFRUD-PERNR").caretPosition = 0
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").text = "MA2B"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").caretPosition = 4
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "7700"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").caretPosition = 4
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-IEDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET5:SAPLCORU_S:0900/subSLCUST:SAPLXCOF:0900/ctxtAFRUD-ZZPLY").text = "MA3"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET5:SAPLCORU_S:0900/subSLCUST:SAPLXCOF:0900/ctxtAFRUD-ZZPLY").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET5:SAPLCORU_S:0900/subSLCUST:SAPLXCOF:0900/ctxtAFRUD-ZZPLY").caretPosition = 3
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").text = "MA3"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").caretPosition = 3
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "20400"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").caretPosition = 5
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-IEDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET5:SAPLCORU_S:0900/subSLCUST:SAPLXCOF:0900/ctxtAFRUD-ZZPLY").text = "MA2T"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET5:SAPLCORU_S:0900/subSLCUST:SAPLXCOF:0900/ctxtAFRUD-ZZPLY").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET5:SAPLCORU_S:0900/subSLCUST:SAPLXCOF:0900/ctxtAFRUD-ZZPLY").caretPosition = 4
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").text = "MA2T"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").caretPosition = 4
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "10300"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/ctxtAFRUD-MEINH").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/ctxtAFRUD-MEINH").caretPosition = 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-IEDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET5:SAPLCORU_S:0900/subSLCUST:SAPLXCOF:0900/ctxtAFRUD-ZZPLY").text = "MA3"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET5:SAPLCORU_S:0900/subSLCUST:SAPLXCOF:0900/ctxtAFRUD-ZZPLY").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET5:SAPLCORU_S:0900/subSLCUST:SAPLXCOF:0900/ctxtAFRUD-ZZPLY").caretPosition = 3
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").text = "MA3"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").caretPosition = 3
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "9000"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-XMNGA").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-XMNGA").caretPosition = 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-IEDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET5:SAPLCORU_S:0900/subSLCUST:SAPLXCOF:0900/ctxtAFRUD-ZZPLY").text = ""
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET5:SAPLCORU_S:0900/subSLCUST:SAPLXCOF:0900/ctxtAFRUD-ZZPLY").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET5:SAPLCORU_S:0900/subSLCUST:SAPLXCOF:0900/ctxtAFRUD-ZZPLY").caretPosition = 1
session.findById("wnd[0]").sendVKey 4
session.findById("wnd[1]/usr/lbl[1,4]").setFocus
session.findById("wnd[1]/usr/lbl[1,4]").caretPosition = 1
session.findById("wnd[1]").sendVKey 2
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").text = "KG1"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").caretPosition = 3
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 5
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").setCurrentCell 2,"KTEXT"
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "3420"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").caretPosition = 4
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "33420"
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[1]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-IEDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/txtAFRUD-ISERH").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/txtAFRUD-ISERH").caretPosition = 0
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,1]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,1]").caretPosition = 0
session.findById("wnd[0]").sendVKey 4
session.findById("wnd[1]/usr/lbl[30,6]").setFocus
session.findById("wnd[1]/usr/lbl[30,6]").caretPosition = 2
session.findById("wnd[1]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,0]").caretPosition = 7
session.findById("wnd[0]").sendVKey 4
session.findById("wnd[1]/usr").verticalScrollbar.position = 280
session.findById("wnd[1]/usr").verticalScrollbar.position = 0
session.findById("wnd[1]").close
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,1]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,1]").caretPosition = 4
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").currentCellRow = 3
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/tbar[0]/btn[15]").press
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "87196"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET2:SAPLCORU_S:0310/tblSAPLCORU_SCTR_TC_ACTIVITIES/txtCORUTCACT-ISM[1,0]").text = "127336"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-IEDD").text = "23.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").caretPosition = 8
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET2:SAPLCORU_S:0310/tblSAPLCORU_SCTR_TC_ACTIVITIES/ctxtCORUTCACT-ILE[2,0]").text = "TO"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET2:SAPLCORU_S:0310/tblSAPLCORU_SCTR_TC_ACTIVITIES/ctxtCORUTCACT-ILE[2,0]").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET2:SAPLCORU_S:0310/tblSAPLCORU_SCTR_TC_ACTIVITIES/ctxtCORUTCACT-ILE[2,0]").caretPosition = 2
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500").columns.elementAt(2).width = 19
session.findById("wnd[0]/tbar[0]/btn[15]").press
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-MATNR[0,2]").text = "r031"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-MATNR[0,2]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-MATNR[0,2]").caretPosition = 4
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-MATNR[0,3]").text = "r031"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-MATNR[0,4]").text = "r031"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-MATNR[0,5]").text = "r031"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-MATNR[0,6]").text = "r031"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-MATNR[0,7]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-MATNR[0,7]").caretPosition = 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,1]").text = "44089"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,2]").text = "10257"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,3]").text = "29701"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,4]").text = "10961"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,5]").text = "2589"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,6]").text = "29739"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,1]").text = "MA1"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,2]").text = "MA2C"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,3]").text = "MA2T"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,4]").text = "MA3"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,5]").text = "MA4"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,6]").text = "KG1"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,6]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-CHARG[6,6]").caretPosition = 3
session.findById("wnd[0]").sendVKey 4
session.findById("wnd[1]/usr/lbl[30,3]").setFocus
session.findById("wnd[1]/usr/lbl[30,3]").caretPosition = 2
session.findById("wnd[1]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-LGORT[5,2]").text = "Y105"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-LGORT[5,3]").text = "Y105"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-LGORT[5,4]").text = "Y105"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-LGORT[5,5]").text = "Y105"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-LGORT[5,1]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/ctxtCOWB_COMP-LGORT[5,1]").caretPosition = 4
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]/tbar[0]/btn[15]").press
session.findById("wnd[1]/usr/btnSPOP-OPTION2").press
session.findById("wnd[0]").sendVKey 5
session.findById("wnd[0]/tbar[0]/btn[15]").press
session.findById("wnd[0]").resizeWorkingPane 267,40,false
session.findById("wnd[0]/tbar[0]/btn[15]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/tbar[0]/btn[15]").press
session.findById("wnd[0]/tbar[0]/btn[15]").press
session.findById("wnd[0]/usr/cntlIMAGE_CONTAINER/shellcont/shell/shellcont[0]/shell").doubleClickNode "F00013"
session.findById("wnd[0]/tbar[1]/btn[17]").press
session.findById("wnd[1]/usr/txtENAME-LOW").text = "WIRELAND"
session.findById("wnd[1]/usr/txtENAME-LOW").setFocus
session.findById("wnd[1]/usr/txtENAME-LOW").caretPosition = 8
session.findById("wnd[1]").sendVKey 0
session.findById("wnd[1]/tbar[0]/btn[8]").press
session.findById("wnd[0]/tbar[1]/btn[8]").press
session.findById("wnd[0]/tbar[0]/btn[15]").press
session.findById("wnd[0]").resizeWorkingPane 267,40,false
session.findById("wnd[0]/tbar[0]/btn[15]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1969"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "12.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "12.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97858"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "12.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1932"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "12.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "12.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97859"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "12.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1939"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "13.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "13.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97860"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "13.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1977"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "13.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "13.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97861"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "13.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "3015"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "14.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "14.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97862"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "14.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1958"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "15.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "15.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97863"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "15.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1918"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "15.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "15.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97864"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "15.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1996"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "16.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "16.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97865"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "16.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "2029"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "17/10/2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "17/10/2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/tbar[0]/btn[15]").press
session.findById("wnd[1]/usr/btnSPOP-OPTION2").press
session.findById("wnd[0]/tbar[0]/btn[15]").press
session.findById("wnd[0]").resizeWorkingPane 98,14,false
session.findById("wnd[0]").maximize
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "2029"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "17.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "17.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97866"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "17.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1899"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "17.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "17.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97867"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "17.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "2045"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "17.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "17.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97868"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "17.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "4008"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "18.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "18.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97869"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "18.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1962"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "18.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "18.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97870"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "18.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1922"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "18.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "18.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97871"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "18.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "2015"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "18.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "18.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97872"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "18.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1969"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "19.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "19.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97873"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "19.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "3027"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "20.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "20.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97874"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "20.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1971"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "20.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "20.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97875"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "20.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1937"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "20.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "20.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97876"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "20.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "2017"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "20.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "20.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97877"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "20.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "3016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "21.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "21.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97878"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "21.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1973"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "21.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "21.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97879"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "21.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1941"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "21.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "21.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97880"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "21.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1947"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "21.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "21.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97881"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "21.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1988"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "22.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "22.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97882"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "22.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1976"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "22.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "22.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97883"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "22.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1935"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "22.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "22.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97884"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "22.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1995"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "23.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "23.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97885"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "23.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = "s001"
session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = "4621"
session.findById("wnd[0]/usr/ctxtAFPOD-PWERK").text = "4622"
session.findById("wnd[0]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = "1990"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = "23.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = "23.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI").select
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZTRAINID").text = "LI97886"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/ctxtCAUFVD-ZZTICKETDATE").text = "23.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabp+COI/ssubSUBSCR_5115:SAPLCOKO:5900/subSSCR115:SAPLXCO1:5100/txtCAUFVD-ZZSTOCKPILE").text = "Stockpile 8"
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]/tbar[0]/btn[15]").press
session.findById("wnd[0]/usr/cntlIMAGE_CONTAINER/shellcont/shell/shellcont[0]/shell").doubleClickNode "F00013"
session.findById("wnd[0]/tbar[1]/btn[17]").press
session.findById("wnd[1]/usr/txtENAME-LOW").text = "WIRELAND"
session.findById("wnd[1]/usr/txtENAME-LOW").setFocus
session.findById("wnd[1]/usr/txtENAME-LOW").caretPosition = 8
session.findById("wnd[1]").sendVKey 0
session.findById("wnd[1]/tbar[0]/btn[8]").press
session.findById("wnd[0]/tbar[1]/btn[8]").press
session.findById("wnd[0]/tbar[0]/btn[15]").press
session.findById("wnd[0]").resizeWorkingPane 267,40,false
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ECKST-LOW").text = "01.10.16"
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ECKST-LOW").setFocus
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ECKST-LOW").caretPosition = 8
session.findById("wnd[0]/tbar[1]/btn[8]").press
session.findById("wnd[1]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ECKST-LOW").text = ""
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ISTST-LOW").text = "01.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ISTST-LOW").setFocus
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ISTST-LOW").caretPosition = 10
session.findById("wnd[0]/tbar[1]/btn[8]").press
session.findById("wnd[1]/tbar[0]/btn[0]").press
session.findById("wnd[1]").sendVKey 0
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ECKST-LOW").text = "01.10.2016"
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ECKST-HIGH").text = "31.10.16"
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ISTST-LOW").text = ""
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ISTST-LOW").setFocus
session.findById("wnd[0]/usr/tabsTABSTRIP_SELBLOCK/tabpSEL_00/ssub%_SUBSCREEN_SELBLOCK:PPIO_ENTRY:1200/ctxtS_ISTST-LOW").caretPosition = 0
session.findById("wnd[0]/tbar[1]/btn[8]").press
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").currentCellColumn = "ZZTICKETDATE"
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_CONF_TYPE:SAPLCORU_S:0105/cmbAFRUD-AUERU").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_CONF_TYPE:SAPLCORU_S:0105/cmbAFRUD-AUERU").key = "X"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "1969"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET2:SAPLCORU_S:0310/tblSAPLCORU_SCTR_TC_ACTIVITIES/txtCORUTCACT-ISM[1,0]").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET2:SAPLCORU_S:0310/tblSAPLCORU_SCTR_TC_ACTIVITIES/txtCORUTCACT-ISM[1,0]").caretPosition = 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").text = "12.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").text = "12.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-IEDD").text = "12.10.16"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET7:SAPLCORU_S:0600/ctxtAFRUD-BUDAT").caretPosition = 8
session.findById("wnd[0]/tbar[1]/btn[18]").press
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,1]").text = "670"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,2]").text = "1339"
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,2]").setFocus
session.findById("wnd[0]/usr/subTABLE:SAPLCOWB:0500/tblSAPLCOWBTCTRL_0500/txtCOWB_COMP-ERFMG[2,2]").caretPosition = 17
session.findById("wnd[0]/tbar[0]/btn[11]").press
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").setCurrentCell 1,"ZZTRAINID"
session.findById("wnd[0]/usr/cntlCUSTOM/shellcont/shell/shellcont/shell").pressToolbarButton "&NAVIGATION_PROFILET0008"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_CONF_TYPE:SAPLCORU_S:0105/cmbAFRUD-AUERU").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_CONF_TYPE:SAPLCORU_S:0105/cmbAFRUD-AUERU").key = "X"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").text = "1932"
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET1:SAPLCORU_S:0215/txtAFRUD-LMNGA").caretPosition = 4
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").text = ""
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").setFocus
session.findById("wnd[0]/usr/ssubSUB01:SAPLCORU_S:0010/subSLOT_DET3:SAPLCORU_S:0500/ctxtAFRUD-ISDD").caretPosition = 0

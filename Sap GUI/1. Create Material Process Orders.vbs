
Site = "4621"    'Change this for other sites

DIM session
Call CreateSAPConnection  
    
    StartMonth = InputBox("Start Date")
    EndMonth = InputBox("End Date")
    WasteTarget = InputBox("Waste Target")
    BlastTarget = InputBox("Blast Target")
    CoalTarget = InputBox("Coal Target")
    WashTarget = InputBox("Wash Target")
    CrushTarget = InputBox("ByPass Crushed Target")


'need to chek the material codes and targets are right
Call CreateMaterialOrders("B010", WasteTarget)
Call CreateMaterialOrders("B020", BlastTarget)
Call CreateMaterialOrders("R031", CoalTarget)
Call CreateMaterialOrders("P031", WashTarget)
Call CreateMaterialOrders("P032", CrushTarget)


Sub CreateMaterialOrders(material, target)
    'Start Transaction
    session.StartTransaction("COR1")
    session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = material
    session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = Site
    session.findById("wnd[0]/usr/ctxtAUFPAR-PI_AUFART").text = ""
    session.findById("wnd[0]").sendVKey 0
    'Enter Details
    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = target
    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = EndMonth
    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = StartMonth
    'Save
    ' session.findById("wnd[0]/tbar[1]/btn[30]").press
    ' session.findById("wnd[0]").sendVKey 0
    ' session.findById("wnd[0]").sendVKey 0
End Sub



Sub CreateSAPConnection()
    
    If Not IsObject(application) Then
    Set SapGuiAuto  = GetObject("SAPGUI")
    Set application = SapGuiAuto.GetScriptingEngine
    End If
    If Not IsObject(connection) Then
    Set connection = application.Children(0)
    End If
    If Not IsObject(session) Then
    Set session = connection.Children(0)
    End If

    If IsObject(WScript) Then
    WScript.ConnectObject session,     "on"
    WScript.ConnectObject application, "on"
    End If

    'CreateSAPConnection 
End Sub
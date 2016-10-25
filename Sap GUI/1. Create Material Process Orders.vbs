Dim Site = "4621"    
    
    
    StartMonth = prompt("Start Date")
    EndMonth = prompt ("End Date")
    WasteTarget = prompt("Waste Target")
    Blast Target = prompt("Blast Target")
    CoalTarget = prompt("Coal Target")
    WashTarget = prompt("Wash Target")
    CrushTarget = prompt("ByPass Crushed Target")

'need to chek the material codes and targets are right
Call CreateMaterialOrders("B010", WasteTarget)
Call CreateMaterialOrders("B020", BlastTarget)
Call CreateMaterialOrders("R031", CoalTarget)
Call CreateMaterialOrders("P031", WashTarget)
Call CreateMaterialOrders("P032", CrushTarget)


Sub CreateMaterialOrders(material, target, SOM, EOM )
    'Start Transaction
    session.StartTransaction("COR1")
    session.findById("wnd[0]/usr/ctxtCAUFVD-MATNR").text = material
    session.findById("wnd[0]/usr/ctxtCAUFVD-WERKS").text = Site
    session.findById("wnd[0]").sendVKey 0
    'Enter Details
    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/txtCAUFVD-GAMNG").text = target
    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GLTRP").text = EndMonth
    session.findById("wnd[0]/usr/tabsTABSTRIP_5115/tabpKOZE/ssubSUBSCR_5115:SAPLCOKO:5120/ctxtCAUFVD-GSTRP").text = StartMonth
    'Save
    session.findById("wnd[0]/tbar[1]/btn[30]").press
    session.findById("wnd[0]").sendVKey 0
    session.findById("wnd[0]").sendVKey 0
End Sub
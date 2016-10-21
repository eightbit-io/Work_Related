
Set sapsession = CreateSAPConnection
DeliveryDate = prompt("Delivery Date")
Tonnes = prompt("Stemming Tonnes")

Call CreateStemmingOrder(sapsession, DeliveryDate,Tonnes)
Call SetAproval("","BGASKE")

'Functions
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


'Subs
Sub CreateStemmingOrder(session, DeliveryDate,Tonnes)
    ' Purpose : This Function actually filles out the purchase req
    ' Assumptions :	SAP must be running? session = CreateSAPConnection, 
    ' Effects : 
    ' Inputs: session, DeliveryDate,Tonnes
    ' Return Values: Nil
    
    session.findById("wnd[0]").maximize
    session.StartTransaction("ME51N") 'Create Purchase Req
    
    session.findById("wnd[0]/usr/subSUB0:SAPLMEGUI:0013/subSUB1:SAPLMEVIEWS:1100/subSUB2:SAPLMEVIEWS:1200/subSUB1:SAPLMEGUI:3102/tabsREQ_HEADER_DETAIL/tabpTABREQHDT1/ssubTABSTRIPCONTROL3SUB:SAPLMEGUI:1230/subTEXTS:SAPLMMTE:0100/subEDITOR:SAPLMMTE:0101/cntlTEXT_EDITOR_0101/shellcont/shell").text = "Stemming for Blast"
    session.findById("wnd[0]/usr/subSUB0:SAPLMEGUI:0013/subSUB2:SAPLMEVIEWS:1100/subSUB2:SAPLMEVIEWS:1200/subSUB1:SAPLMEGUI:3212/cntlGRIDCONTROL/shellcont/shell").modifyCell 0,"TXZ01","Delivery of Drainage aggregate (~20mm)"
    'Need to re-record the macro.

    End Sub



'
Sub SetAproval(endorser,aprover)
    ' Purpose : This Function actually filles out the purchase req
    ' Assumptions :	SAP must be running? session = CreateSAPConnection, 
    ' Effects : 
    ' Inputs: session, DeliveryDate,Tonnes
    ' Return Values: Nil 
    
    session.findById("wnd[0]/usr/subSUB0:SAPLMEGUI:0010/subSUB3:SAPLMEVIEWS:1100/subSUB2:SAPLMEVIEWS:1200/subSUB1:SAPLMEGUI:1301/subSUB2:SAPLMEGUI:3303/tabsREQ_ITEM_DETAIL/tabpTABREQDT15/ssubTABSTRIPCONTROL1SUB:SAPLMEGUI:1318/ssubCUSTOMER_DATA_ITEM:SAPLXM02:0111/btnBTN_APPROVAL").press
    session.findById("wnd[1]/usr/ctxtWF_POPUP-ENDORSER").text = "endorser"
    session.findById("wnd[1]/usr/ctxtWF_POPUP-APRROVER").text = "aprover"
    Session.findById("wnd[1]/tbar[0]/btn[2]").press
    End Sub




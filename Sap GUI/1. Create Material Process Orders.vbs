'======================================================================================================================
'    ___              _         __  __      _           _      _   ___                          ___         _            
'   / __|_ _ ___ __ _| |_ ___  |  \/  |__ _| |_ ___ _ _(_)__ _| | | _ \_ _ ___  __ ___ ______  / _ \ _ _ __| |___ _ _ ___
'  | (__| '_/ -_) _` |  _/ -_) | |\/| / _` |  _/ -_) '_| / _` | | |  _/ '_/ _ \/ _/ -_|_-<_-< | (_) | '_/ _` / -_) '_(_-<
'   \___|_| \___\__,_|\__\___| |_|  |_\__,_|\__\___|_| |_\__,_|_| |_| |_| \___/\__\___/__/__/  \___/|_| \__,_\___|_| /__/
                                                                                                                                       
'   This Script creates the monthly material Process Orders in SAP to confirm against. 
'   Update the Targets below and make sure Todaysdate is updated to the actual date. 
'   You will need to have SAP already running in another window. Then double click on the script to run.
'
'   Created By Chris Saunders (October 2016)
'======================================================================================================================

' Update the date and targets from the budget.

                WasteTarget = "1008615"
                BlastTarget =  "279186"
                CoalTarget  =  "216058"
                WashTarget  =   "96623"
                CrushTarget =   "38380"
                
                Todaysdate  = "3/11/16"     ' Must be todays date. 
                Site        = "4621"        ' Change this for other sites







' DO NOT EDIT ANYTHING BELOW THIS
'======================================================================================================================

'Main

    If CDATE(Todaysdate) <> Date Then MsgBox("Please open the script and edit the dates and targets"), WScript.Quit
    
    StartMonth = replace(dateserial(year(Todaysdate),month(Todaysdate),1),"/",".")
    EndMonth = replace(dateadd("m",1,startmonth)-1,"/",".")

    ' Setup SAP
    DIM session
    Call CreateSAPConnection  
    
    'need to check the material codes and targets are right
    ' Enter Targets
    Call CreateMaterialOrders("B010", WasteTarget)
    Call CreateMaterialOrders("B020", BlastTarget)
    Call CreateMaterialOrders("R031", CoalTarget)
    Call CreateMaterialOrders("P031", WashTarget)
    Call CreateMaterialOrders("P032", CrushTarget)


'======================================================================================================================
'Subroutines

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
        session.findById("wnd[0]/tbar[1]/btn[30]").press
        session.findById("wnd[0]").sendVKey 0
        session.findById("wnd[0]").sendVKey 0

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

    End Sub
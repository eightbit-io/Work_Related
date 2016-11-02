''' Backup of SQL routines for the daily report updgrade


Sub SQLExcecute(SubRecordSet, SubCon, SubSQLQuery, SubDestination)
   
    SubRecordSet.Open SubSQLQuery, SubCon
    SubDestination.CopyFromRecordset SubRecordSet
    SubRecordSet.Close

End Sub


Sub Main()
''' Main sub that drives the SQL excecute function.
''' Need to create loop for SQLQuery and Destination


Dim DBCon As New ADODB.Connection
Dim RecordsSet As New ADODB.RecordSet
ConnectionString = "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=True;Data Source=ycc-ap01;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Initial Catalog=CAMEBY_PRODUCTION"
Dim Destination As Range

DBCon.Open ConnectionString
DBCon.CommandTimeout = 120


SQLQuery = Sheets("Sheet2").Range("d2")
Set Destination = Sheets("Sheet2").Range("b3")

SQLExcecute RecordsSet, DBCon, SQLQuery, Destination


End Sub
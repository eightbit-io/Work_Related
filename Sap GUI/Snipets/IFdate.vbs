Todaysdate = cdate("1/11/16")
startmonth = dateserial(year(Todaysdate),month(Todaysdate),1)
endmonth = dateadd("m",1,startmonth)-1

MsgBox replace(startmonth,"/",".")
MsgBox replace(endmonth,"/",".")

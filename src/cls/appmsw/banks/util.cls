Class appmsw.banks.util [ Abstract ]
{

ClassMethod init() As %Status
{
	if '##class(Ens.Director).IsProductionRunning("appmsw.banks.production") {
	    write !,"Run prod"
		job ##class(Ens.Director).StartProduction("appmsw.banks.production")::1
		do ##class(Ens.Director).SetAutoStart("appmsw.banks.production")
		else   write !," no job start"
	}
    return $$$OK
}

/// do ##class(appmsw.banks.util).MakeProject("/irisdev/app/src/data/")
ClassMethod MakeProject(dir) As %Status
{
	do $classmethod("apptools.core.code","exp",dir_"src","appmsw.banks")
	do $classmethod("apptools.core.code","exp",dir_"src","Sb")
    return $$$OK
}

ClassMethod initDb(from = "2021-01-01", to = "2021-12-31") As %Status
{
	for h=$zdh(from,3):1:$zdh(to,3) {
		set Date=$zd(h,3) 
		write !,"<br>"_Date
		;do ##class(appmsw.cbrf.tabexDay).CheckDay(Date,.count)
		if $g(count) write " uploaded earlier" continue
		;set st=##class(appmsw.cbrf.tabexDay).LoadDay("http://www.cbr.ru/scripts/xml_daily.asp?date_req=",Date)
		if st {	
			write " loaded"
		}
	}
    return $$$OK
}

}


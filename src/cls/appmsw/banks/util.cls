Include apptools.core

Class appmsw.banks.util [ Abstract ]
{

Parameter GN = "^%appmsw";

/// do ##class(appmsw.banks.util).init()
ClassMethod init() As %Status
{
	set gn=##class(appmsw.banks.util).#GN
	if '##class(Ens.Director).IsProductionRunning("appmsw.banks.production") {
	    write !,"Run prod"
		job ##class(Ens.Director).StartProduction("appmsw.banks.production")::1
		do ##class(Ens.Director).SetAutoStart("appmsw.banks.production")
		else   write !," no job start"
	}
	set tempdir="/tmp/"
	if $zversion(1)=3 {  //Linux
		set dir="/opt/irisapp/src/"
		set dir2="/irisdev/" 
		if ##class(%File).DirectoryExists(dir) {
		 if '##class(%File).DirectoryExists(dir2) {	;for demo  GCR
			set tempdir="/tmp/"		
		 }
		 else {  ;install zpm modules for Docker
			set tempdir="/tmp/"
		 }
		}
		else {  //just linux without docker
			set tempdir="/tmp/"
		}
	    ;set options for linux
	    ;/opt/irisapp/src/csp/sql2xlsx/pattern/
		;/usr/irissys/mgr/Temp/
	}
	else { ;set options for Windows
		set sls=$$$slash
		set st=$$$OK
		Set tempdir = ##class(%File).GetDirectory(##class(%File).GetDirectory($zu(86))_"mgr"_sls_"Temp"_sls)
		set st=##class(%File).CreateDirectoryChain(tempdir)
		if 'st  write !,$System.Status.GetErrorText(st) q st
	}
	set @gn@("tempdir")=tempdir
	write !,tempdir
    return $$$OK
}

/// do ##class(appmsw.banks.util).MakeProject("/irisdev/app/src/data/")
ClassMethod MakeProject(dir) As %Status
{
	do $classmethod("apptools.core.code","exp",dir_"src","appmsw.banks")
	do $classmethod("apptools.core.code","exp",dir_"src","Sb")
    return $$$OK
}

}


Include apptools.core

/// http://localhost:52773/apptoolsrest/a/info&class=appmsw.banks.info&namespace=appmsw-banks-ru
Class appmsw.banks.info Extends apptools.lte.adminTabs [ ClassType = "", DependsOn = apptools.core.msg, ProcedureBlock ]
{

/// Application title
Parameter HeaderText = "Banks-Info";

/// Roles
Parameter AppRoles = "Banks-Info";

/// Replace parameters
ClassMethod MainParameter(ByRef h, ByRef par) As %Status
{
 set path=par("=path=")
 set par("=Brand-Text=")=..#HeaderText
 set base64=##class(apptools.core.rest).getStatic(..%ClassName(1)_":image")
 set par("=Logo-image=")=base64
 set par("=titleAppToolsadmin=")=..#HeaderText
 set par("<!--=LinkIcon=-->")=..GetAppIcon(,"png",base64)
 set par("<!--FooterLeft-->")=$system_" - "_$zv
 set par("<!--FooterRight-->")="<a target='license' href=""/csp/sys/op/UtilDashboard.csp?$NAMESPACE=%25SYS""> "_$$$aText("System Dashboard","")_"</a>"
 quit ..RepaceParameter(.h,.par)
}

/// what modes are available
ClassMethod GetAllApps(opt) As %Status
{
	set ns=$namespace
	set sideMenuName="Tables",
		sideMenuNumer=1,
		sideMenuOpen=1,        //3 =1 open menu
		sideMenuIcon="fa-cog"  //4  icon   https://fontawesome.com/icons?d=gallery&p=2&m=free
		set sideMenu=$lb(sideMenuNumer,sideMenuName,sideMenuOpen,sideMenuIcon) 
		set key="View"
		set opt(key,"Menu")=sideMenu
		set opt(key)="Banks"
		set opt(key,"id")=key
		set opt(key,"TabName")="Banks"
		set opt(key,"ClassName")=..%ClassName(1)
		set opt(key,"Role")="%All"
		set opt(key,"Namespace")=ns
		set opt(key,"Method")="ShowTabSample"
		set opt(key,"TabMenu","Close")=1 ;0 = the tab cannot be deleted
		set opt(key,"aw-icon")="fa-list-alt" ;fa-table"   https://fontawesome.com/icons?d=gallery&p=2&m=free
		set opt(key,"Active")=1 ;active menu item

	set key="FilesServer"
	set opt(key,"Namespace")=ns
	set opt(key)="FilesServer"
	set opt(key,"id")="FS"
	set opt(key,"TabName")=opt(key)
	set opt(key,"ClassName")=..%ClassName(1)
	set opt(key,"Method")="ShowTabSample"
	set opt(key,"Disable")=0
	set opt(key,"TabMenu","Close")=1
	set opt(key,"Menu")=sideMenu
	set opt(key,"aw-icon")="fa-list-alt" ;fa-table"   https://fontawesome.com/icons?d=gallery&p=2&m=free

	;top menu
		set LeftMenuName="Support",LeftMenuNumer=1
		set key="menu-top-support"
		set opt(key)="support"
		set opt(key,"id")="Support"
		set opt(key,"TabName")="Support" 
		set opt(key,"ClassName")=..%ClassName(1)
		set opt(key,"Method")="ShowTabAbout"
		set opt(key,"TabMenu","Close")=1
		set opt(key,"MenuTop")=$lb(LeftMenuNumer,LeftMenuName)
	
	set topMenuName="Account",
		topMenuNumer=99
		set key="menu-top-accoun2"
		set opt(key)="Account: "_$username
		set opt(key,"id")="AccountProf"
		set opt(key,"TabName")="Profile "_$username 
		set opt(key,"ClassName")=..%ClassName(1)
		set opt(key,"Method")="ShowInIFrame" 
		set opt(key,"InFrameUrl")="http://"_$zu(110)_":52773/csp/sys/sec/%25CSP.UI.Portal.User.zen?PID="_$username
		set opt(key,"MenuTop")=$lb(topMenuNumer,topMenuName)
	set key="menu-top-account3"
		set opt(key,"MenuTop")=$lb(topMenuNumer,topMenuName) ; 99-account has nested items
		set opt(key)="Exit"
		set opt(key,"id")="AccountExit"
		set opt(key,"TabName")="Logoit" 
		set opt(key,"ClassName")=..%ClassName(1)
		set opt(key,"Method")="Logout"
	
	;----- Setup the search in the top menu
	s key="Search"
	s opt(key)="Search"
	s opt(key,"id")="Search-"
	s opt(key,"TabName")="Search"_"-"
	s opt(key,"ClassName")=..%ClassName(1)
	s opt(key,"Method")="ShowTabSearch"
	s opt(key,"TabMenu","Mode")=0 ;1 - for each new search bar to make new tab, 0-tab is always the same
	
	do ..CheckRoleMenu(.opt)
	quit $$$OK
}

ClassMethod FSFirstHead(Par = "") As %Status
{
	do ##class(apptools.lte.fileserver).FirstHead(.Par)
	quit $$$OK
}

ClassMethod ViewFirstHead(Par = "") As %Status
{
	do ##class(apptools.core.Form).BlockUI(0)
	set key=Par("key")
	set divId=Par("divId")
	set %ui=1
	set dataFrom=$zd($h-10,3)
	set dataTo=$zd($h+1,3)
	set onclick=$$$blockui("Load...")_
		$$$onclick(divId_"MainForm",divId_"MainContent",$namespace,..%ClassName(1),divId_"Result","&key="_key_"&divId="_divId_"&mode=*")
	&html<
		<table>
		<tr>
			<td>
 			from #($$$appDate(divId_"fromDate","",dataFrom))#
			</td>
			<td>
			to #($$$appDate(divId_"toDate","",dataTo))#
			</td>
			<td>
			#($$$appText(divId_"context","title='context search name'",""))#
			#($$$appButton(divId_"appButtonResult1","onclick="""_$replace(onclick,"*",1)_"""","Search"))#
			#($$$appButton(divId_"appButtonResult2","onclick="""_$replace(onclick,"*",2)_"""","Export to XLSX"))#
			</td>
		</tr>
		</table>
	>
	$$$SetHeightContent(divId,250)
	q $$$OK
}

/// Search result 
ClassMethod ViewResult(Par = "") As %Status
{
	set %ui=1
	do ##class(apptools.core.Form).BlockUI(0)
	set key=Par("key")
	set divId=Par("divId")
	set mode=Par("mode")
	;Geting elements from form and prepare array Par
	set from=##class(apptools.core.Action).GetElemForm(%request,.Par,divId_"fromDate")	
	set to=##class(apptools.core.Action).GetElemForm(%request,.Par,divId_"toDate")
	s context=##class(apptools.core.Action).GetElemForm(%request,.Par,divId_"context")
	write ..ButtonAgain(divId,key)
	
	set gn=##class(appmsw.banks.util).#GN
	set tempdir=$G(@gn@("tempdir"))
	if tempdir="" write "Tempory Directory is not defined" quit $$$OK
	set sql="select NAMEP,ADR,NEWNUM,REGN,KSNP,DATEIN,importdate from appmsw_banks.model where importdate >= '"_from_"' and importdate <= '"_to_"' "
	if context'="" set sql=sql_" and NAMEP['"_context_"'"
	if mode=1 {
		set st=##class(apptools.core.LogInfoPane).DrawSQL(sql,100000,$zu(5),sql,$GET(exec),,1)
		if 'st  write $$$appError($System.Status.GetErrorText(st))
	}
	elseif mode=2 { ;"Export to XLSX"
		set gn="^||tmpQuery"
		set st=##class(apptools.core.sys).SaveSQL(sql,gn)
		if 'st  write $$$appError($System.Status.GetErrorText(st)) quit st
		set newfile=tempdir_"Query-BIC-"_$tr(##class(apptools.core.type).GetDateTime($h),"T:","_")_".xlsx"
		set format("freeze")="B3"
		set res=##class(apptools.python.xlsx).gn2xlsx(gn,.format,newfile,"Query Banks")
		set st=##class(apptools.lte.fileserver).AddRecord($namespace, $username, "Query-BIC", newfile)
		if 'st write $$$appError("Error "_newfile_" "_$System.Status.GetErrorText(st)) quit st
		write $$$appMsg("Completed "_newfile)
	}
	quit $$$OK
}

ClassMethod CurrFirstHead(Par = "") As %Status
{
	do ##class(apptools.core.Form).BlockUI(0)
	set key=Par("key")
	set divId=Par("divId")
	set %ui=1
	set path="/opt/irisapp/src/csp/data/NamesCurrences.txt"
    set inc=0 
	//##class(apptools.core.Action).WriteActJs(%request,divId_"MainForm",divId_"MainContent",..%ClassName(1),divId_"Result","&key="_key_"&divId="_divId_"&mode=*")
	set onclick=$$$blockui("Load...")_
		$$$onclick(divId_"MainForm",divId_"MainContent",$namespace,..%ClassName(1),divId_"Result","&key="_key_"&divId="_divId_"&mode=*")
	&html<
		<table>
		<tr>
			<td>
 	
			</td>
			<td>
			</td>
			<td>
			#($$$appButton(divId_"appButtonResult1","onclick="""_$tr(onclick,"*",1)_"""","Search"))#
			#($$$appButton(divId_"appButtonResult2","onclick="""_$tr(onclick,"*",2)_"""","Delete Data"))#
			#($$$appButton(divId_"appButtonResult3","onclick="""_$tr(onclick,"*",3)_"""","Load Data"))#
			#($$$appText(divId_"Path_to_files","title='path to files' size=80 ",path))#
			</td>
		</tr>
		</table>
	>
	$$$SetHeightContent(divId,250)
	q $$$OK
}

/// Search result 
ClassMethod CurrResult(Par = "") As %Status
{
	set %ui=1
	do ##class(apptools.core.Form).BlockUI(0)
	set key=Par("key")
	set divId=Par("divId")
	set mode=Par("mode")
	set class="appmsw.cbrf.tabcurr"
	set table="appmsw_cbrf.tabcurr"
	set Path=##class(apptools.core.Action).GetElemForm(%request,.Par,divId_"Path_to_files")	
	write ..ButtonAgain(divId,key)
	if mode=1 {
		set sql="select * from appmsw_cbrf.tabcurr"
		set st=##class(apptools.core.LogInfoPane).DrawSQL(sql,100000,$zu(5),sql,$GET(exec),,1)
		if 'st  write $$$appError($System.Status.GetErrorText(st))
	}
	elseif mode=2 {
		Do $classmethod(class,"%KillExtent")
		write "%KillExtent"
	}
	elseif mode=3 {
		set st=##class(appmsw.cbrf.util).LoadData(Path,table)
		write "Loaded"
	}
	quit $$$OK
}

/// set base64 = ##class(apptools.core.rest).getStatic("appmsw.banks.info:image") w !,base64,!
XData image [ MimeType = application/yaml ]
{
data:image/x-png;base64,
iVBORw0KGgoAAAANSUhEUgAAADAAAAAuCAYAAABu3ppsAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAGqSURBVGhD7ZpBTsNADEVHYlEJiUpIXYBYcAc4
QA8AZ+iKHiNco4rUQ7CnF+AM3ITNkD/UwgxOlMZTHNMs3sbjjPwntsdVGuq6jiGEuHo4jx9vN6Pj
/eWq1Y64G76D3z5fxtvrs1/OYyWJWN7Nfhir9TyJaFM+NoJkxJuQ7GNEFOCFlELSggd2m8VXEUuL
HsDpJxHSoicmAdYEL/2+jSmFOHibXUjPaCkmAAHuh6tOMKYs72exeroQ9zmUPxfAgRDtmzEVAFaP
ujH+aAKQIrDlwM79wLYaPjweTUBXULkvUkny64OJAICgyVfzI8pMAHKf+0s+fTATgFMnX3cp9Eqz
/B5NJ1IJQNAIBiDgPCjYOOhA/OQJPC/t3weVAF6IQ9HeyKYCSowTKgFIE6QEwYPjdg6eoUtO2vNQ
TIq4JCoBVJgg7+tIL1rLKXX6wKQGNF0n57QF0B1A8CCRKvk6Ie01lNMuYs6/EMA7TelUaaOYACsm
AdaEsX7c68uUQlakrree+xaAL6yuUyhdntKCJ/wLkNoobF4+djdzVzP6NtVMBgSf//1grOw2i/gJ
6iIiN+WTxI4AAAAASUVORK5CYII=
}

}


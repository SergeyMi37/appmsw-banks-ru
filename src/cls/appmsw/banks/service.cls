Include apptools.core

Class appmsw.banks.service Extends Ens.BusinessService
{

/// EnsLib.HTTP.OutboundAdapter
Parameter ADAPTER = "appmsw.banks.adapter";

/// temporary directory
Property TempDir As %String(MAXLEN = 250) [ InitialExpression = "/tmp", Required ];

/// Link to the Central Bank service
Property URL As %String(MAXLEN = 350) [ InitialExpression = "http://www.cbr.ru/VFS/mcirabis/BIKNew/", Required ];

Property NoDeleteTemp As %Boolean;

Property TestLoadFile As %String(MAXLEN = 250);

/// 2022-09-01:1:2022-09-09
Property LoadOverRange As %String(MAXLEN = 250);

Parameter SETTINGS = "URL:Basic,TempDir:Basic,NoDeleteTemp:Basic,TestLoadFile:Basic,LoadOverRange:Basic";

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{
	s sc=$$$OK
	if ..TestLoadFile'="" {
		$$$TRACE("Load from "_..TestLoadFile)
		s infile=..TestLoadFile
		s day=$p(infile,"_",1)
		s sc=..LoadDay(..URL,$e(day,1,4)_"-"_$e(day,5,6)_"-"_$e(day,7,8),..TempDir,..NoDeleteTemp)
	} else {
		if ..LoadOverRange'="" {
			s fday=$p(..LoadOverRange,":",1)
			s tday=$p(..LoadOverRange,":",3)
			f hday=$zdh(fday,3):1:$zdh(tday,3) {
				$$$TRACE("download per date "_$zd(hday,3))
				s sc=..LoadDay(..URL,$zd(hday,3),..TempDir,..NoDeleteTemp)
				If $$$ISERR(sc)  $$$TRACE($System.Status.GetErrorText(sc))
			}
			$$$TRACE("Upload for date range completed")
			q $$$OK
		} else {
			s sc=..LoadDay(..URL,$zd($h,3),..TempDir,..NoDeleteTemp)
		}
	}
	q sc
}

/// do ##class(appmsw.banks.service).LoadDay(,"2022-09-05","d:\!\",1)
ClassMethod LoadDay(url = "http://www.cbr.ru/VFS/mcirabis/BIKNew/", Day, TempDir, NoDeleteTemp = 0)
{
	set file=$tr(Day,"-")_"_ED807_full.xml"
	set filezip=$tr(Day,"-")_"ED01OSBR.zip"
	set url=url_filezip
	$$$TRACE("Get from "_url_", Date "_Day)
	write !,url
	set sc=##class(apptools.core.net).GetHttp(url,.Data,TempDir)
	if 'sc write !,$System.Status.GetErrorText(sc) quit sc
	quit:'$isobject(Data("content")) $$$ERROR($$$GeneralError,"Not content")
	s stream=Data("content")
	$$$TRACE("Download from archive "_Data("pathfileName"))

	s TempDirunzip=TempDir
	s sc=##class(apptools.core.files).UnzipToDirectory(Data("pathfileName"),.TempDirunzip,.cmd)
	$$$TRACE($g(cmd))
	s infile=TempDirunzip_file
	Set tReader = ##class(%XML.Reader).%New()
	s tReader.UsePPGHandler = 1
	$$$TRACE("Loading from a file "_infile)
	s sc=tReader.OpenFile(infile)
	If $$$ISERR(sc)  s msg=$System.Status.GetErrorText(sc) Quit $$$ERROR($$$GeneralError,msg)
	Do tReader.Correlate("ED807","Sb.xsd.ed.ED807")
	While tReader.Next(.Object, .sc) {
	    i $isobject(Object) {
		  s bics=Object.any.Count()
			s BusinessDay=Object.BusinessDay
			s count=0
			f i=1:1:bics {
				s xml=Object.any.GetAt(i)
				s sс=..AddBIC(xml,.out,BusinessDay,file,.count)
				If $$$ISERR(sc) quit
			}
	    }
	}
	If $$$ISERR(sc) s msg=$System.Status.GetErrorText(sc) Quit $$$ERROR($$$GeneralError,msg)
	$$$TRACE("Loaded "_$g(count))
	
	$$$TRACE($g(msg))
	
	if 'NoDeleteTemp d ##class(App.files).RemoveFiles(infile) d ##class(App.files).RemoveFiles(filezip)
	quit sc
}

/// w ##class(appmsw.banks.service).AddBIC(a)
ClassMethod AddBIC(xml, bnkseek, date, file, ByRef count)
{

	Set tReader = ##class(%XML.Reader).%New()
	;s tReader.UsePPGHandler = 1
	s sc=tReader.OpenString(xml)
	If $$$ISERR(sc)  s msg=$System.Status.GetErrorText(sc) Quit $$$ERROR($$$GeneralError,msg)
	Do tReader.Correlate("BICDirectoryEntry","Sb.xsd.ed.BICDirectoryEntryType")
	k bnkseek
	s bnkseek("CBRFDATE")=date
	s bnkseek("CBRFFILE")=file
	While tReader.Next(.Object, .sc) {
		If $$$ISERR(sc) Quit
		if $isobject(Object) {
			;w !,Object.BIC 
			s bnkseek("json")=$$$AppObJs(Object)
			s bnkseek("NEWNUM")=Object.BIC
			s bnkseek("NNP")=Object.ParticipantInfo.Nnp
			s bnkseek("NAMEP")=Object.ParticipantInfo.NameP
			s bnkseek("RGN")=Object.ParticipantInfo.Rgn
			s bnkseek("REGN")=Object.ParticipantInfo.RegN
			s bnkseek("ADR")=Object.ParticipantInfo.Adr
			s bnkseek("IND")=Object.ParticipantInfo.Ind
			s bnkseek("TNP")=Object.ParticipantInfo.Tnp
			s bnkseek("DATEIN")=Object.ParticipantInfo.DateIn ;??
			s bnkseek("PZN")=Object.ParticipantInfo.PtType
			if Object.Accounts.Count() { //первый Лицевой счёт
				set bnkseek("KSNP")=Object.Accounts.GetAt(1).Account
			}
		}
	}
	If $$$ISERR(sc)  s msg=$System.Status.GetErrorText(sc) Quit $$$ERROR($$$GeneralError,msg)
	set sc=##class(appmsw.banks.model).insertRow(.bnkseek)
	if sc s count=$g(count)+1
	quit sc
}

}


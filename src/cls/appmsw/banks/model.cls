Include apptools.core

Class appmsw.banks.model Extends (%Persistent, %XML.Adaptor) [ Inheritance = left, ProcedureBlock ]
{

/// Date BusinessDay
Property CBRFDATE As %TimeStamp [ SqlFieldName = CBRFDATE ];

/// filename
Property CBRFFILE As %String(MAXLEN = 200);

Property PZN As %String(MAXLEN = 20) [ SqlColumnNumber = 4 ];

Property RGN As %String(MAXLEN = 20) [ SqlColumnNumber = 6 ];

Property IND As %String(MAXLEN = 6) [ SqlColumnNumber = 7 ];

Property TNP As %String(MAXLEN = 10) [ SqlColumnNumber = 8 ];

Property NNP As %String(MAXLEN = 250) [ SqlColumnNumber = 9 ];

Property ADR As %String(MAXLEN = 300) [ SqlColumnNumber = 10 ];

Property NAMEP As %String(MAXLEN = 450) [ SqlColumnNumber = 12 ];

Property NEWNUM As %String(MAXLEN = 9) [ SqlColumnNumber = 14 ];

Property REGN As %String(MAXLEN = 90) [ SqlColumnNumber = 21 ];

Property KSNP As %String(MAXLEN = 20) [ SqlColumnNumber = 25 ];

Property DATEIN As %TimeStamp [ SqlColumnNumber = 26 ];

///  [ InitialExpression = {$zdt($h, 3, 1)} ]
Property importDate As %TimeStamp;

Index IndeximportDate On importDate;

Index IndexNEWNUM On NEWNUM;

Index IndexNAMEP On NAMEP;

Index IndexCBRFDATE On CBRFDATE;

Index IndexCBRFFILE On CBRFFILE;

Property CRC7 As %String(MAXLEN = "");

Index IndCRC On CRC7;

Property json As %String(MAXLEN = "");

/// w ##class(appmsw.banks.model).insertRow(.arr)
ClassMethod insertRow(arr) As %Status
{
 set obj=##class(appmsw.banks.model).%New()
 set key="",CRC7=""
 for { s key=$o(arr(key)) q:key=""
 	set CRC7=CRC7_$g(arr(key))
 	set $property(obj,key)=$g(arr(key))
 }
 set CRC=$ZCRC(CRC7,7) 
 if obj.CheckCRC(CRC,obj) q $$$ERROR($$$GeneralError,"this is a double - do not record")
 set obj.CRC7=CRC
 set obj.importDate=$zdt($h, 3, 1)
 Set Status = obj.%Save()
 if $$$ISERR(Status) quit Status
 quit $$$OK
}

/// Check uniqueness
/// w ##class(appmsw.banks.model).CheckCRC(CRC,obj) 
ClassMethod CheckCRC(CRC, obj)
{
	set sql="select NEWNUM,NAMEP from appmsw_banks.model where CRC7=?"
	set isDuble=0
	#dim sql As %ResultSet.SQL = ##class(%ResultSet.SQL).%Prepare(sql,,,CRC)
	while sql.%Next() {
		try {
			i obj.NEWNUM=sql.NEWNUM,obj.NAMEP=sql.NAMEP s isDuble=1
		} catch e {}
	}
	quit isDuble
}

Storage Default
{
<Data name="modelDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CBRFDATE</Value>
</Value>
<Value name="3">
<Value>CBRFFILE</Value>
</Value>
<Value name="4">
<Value>PZN</Value>
</Value>
<Value name="5">
<Value>RGN</Value>
</Value>
<Value name="6">
<Value>IND</Value>
</Value>
<Value name="7">
<Value>TNP</Value>
</Value>
<Value name="8">
<Value>NNP</Value>
</Value>
<Value name="9">
<Value>ADR</Value>
</Value>
<Value name="10">
<Value>NAMEP</Value>
</Value>
<Value name="11">
<Value>NEWNUM</Value>
</Value>
<Value name="12">
<Value>REGN</Value>
</Value>
<Value name="13">
<Value>KSNP</Value>
</Value>
<Value name="14">
<Value>DATEIN</Value>
</Value>
<Value name="15">
<Value>importDate</Value>
</Value>
<Value name="16">
<Value>CRC7</Value>
</Value>
<Value name="17">
<Value>json</Value>
</Value>
</Data>
<DataLocation>^appmsw.banks.modelD</DataLocation>
<DefaultData>modelDefaultData</DefaultData>
<ExtentSize>0</ExtentSize>
<IdLocation>^appmsw.banks.modelD</IdLocation>
<IndexLocation>^appmsw.banks.modelI</IndexLocation>
<StreamLocation>^appmsw.banks.modelS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


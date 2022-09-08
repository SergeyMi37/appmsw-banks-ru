/// Time range
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.DateTimeInterval Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.DateTimeType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "DateTimeInterval";

Parameter XMLSEQUENCE = 1;

/// Time From.
Property BeginTime As Sb.xsd.lt.DateTimeType(XMLNAME = "BeginTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Time To.
Property EndTime As Sb.xsd.lt.DateTimeType(XMLNAME = "EndTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="DateTimeIntervalDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BeginTime</Value>
</Value>
<Value name="3">
<Value>EndTime</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.DateTimeIntervalD</DataLocation>
<DefaultData>DateTimeIntervalDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.DateTimeIntervalD</IdLocation>
<IndexLocation>^Sb.xsd.ed.DateTimeIntervalI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.DateTimeIntervalS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


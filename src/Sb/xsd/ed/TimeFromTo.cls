/// Time range requested EM were sent or received.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.TimeFromTo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.DateTimeType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "TimeFromTo";

Parameter XMLSEQUENCE = 1;

/// Time From.
Property TimeFrom As Sb.xsd.lt.DateTimeType(XMLNAME = "TimeFrom", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Time To.
Property TimeTo As Sb.xsd.lt.DateTimeType(XMLNAME = "TimeTo", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="TimeFromToDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TimeFrom</Value>
</Value>
<Value name="3">
<Value>TimeTo</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.TimeFromToD</DataLocation>
<DefaultData>TimeFromToDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.TimeFromToD</IdLocation>
<IndexLocation>^Sb.xsd.ed.TimeFromToI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.TimeFromToS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


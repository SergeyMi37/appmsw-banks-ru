/// Request Time Period
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.TimePeriod Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.DateType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "TimePeriod";

Parameter XMLSEQUENCE = 0;

/// Time range requested EM were sent or received.
Property TimeFromTo As Sb.xsd.ed.TimeFromTo(XMLNAME = "TimeFromTo");

/// Date for which EM is requested.
Property InquiryDate As Sb.xsd.lt.DateType(XMLNAME = "InquiryDate");

Storage Default
{
<Data name="TimePeriodDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TimeFromTo</Value>
</Value>
<Value name="3">
<Value>InquiryDate</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.TimePeriodD</DataLocation>
<DefaultData>TimePeriodDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.TimePeriodD</IdLocation>
<IndexLocation>^Sb.xsd.ed.TimePeriodI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.TimePeriodS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


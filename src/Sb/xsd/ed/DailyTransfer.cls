/// Balance Sweeping Event.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.DailyTransfer Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.TimeType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "DailyTransfer";

Parameter XMLSEQUENCE = 0;

/// Time of balance sweeping.
Property TimeTransfer As Sb.xsd.lt.TimeType(XMLNAME = "TimeTransfer");

/// Event of Balance Sweeping.
Property EventTransfer As Sb.xsd.ed.EventTransfer(XMLNAME = "EventTransfer");

Storage Default
{
<Data name="DailyTransferDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TimeTransfer</Value>
</Value>
<Value name="3">
<Value>EventTransfer</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.DailyTransferD</DataLocation>
<DefaultData>DailyTransferDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.DailyTransferD</IdLocation>
<IndexLocation>^Sb.xsd.ed.DailyTransferI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.DailyTransferS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


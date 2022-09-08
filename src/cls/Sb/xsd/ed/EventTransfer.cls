/// Event of Balance Sweeping.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.EventTransfer Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.EventCodeType, Sb.xsd.lt.Max3NumberType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "EventTransfer";

Parameter XMLSEQUENCE = 1;

/// Event Type Code.
Property EventCode As Sb.xsd.lt.EventCodeType(XMLNAME = "EventCode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Event Number.
Property EventNumber As Sb.xsd.lt.Max3NumberType(XMLNAME = "EventNumber", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="EventTransferDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>EventCode</Value>
</Value>
<Value name="3">
<Value>EventNumber</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.EventTransferD</DataLocation>
<DefaultData>EventTransferDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.EventTransferD</IdLocation>
<IndexLocation>^Sb.xsd.ed.EventTransferI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.EventTransferS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


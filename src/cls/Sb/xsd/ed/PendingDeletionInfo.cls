/// Additional information for “Pending deletion” restriction.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.PendingDeletionInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.DateType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "PendingDeletionInfo";

Parameter XMLSEQUENCE = 1;

/// Destination Account that should be used for balance sweeping at the last day.
Property DestinationInfo As Sb.xsd.ed.DestinationInfo(XMLNAME = "DestinationInfo");

/// Scheduled deletion date.
Property AccountCloseDate As Sb.xsd.lt.DateType(XMLNAME = "AccountCloseDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="PendingDeletionInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DestinationInfo</Value>
</Value>
<Value name="3">
<Value>AccountCloseDate</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.PendingDeletionInfoD</DataLocation>
<DefaultData>PendingDeletionInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.PendingDeletionInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.PendingDeletionInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.PendingDeletionInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


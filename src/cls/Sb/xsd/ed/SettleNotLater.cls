/// "Execute not later than".
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.SettleNotLater Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.TimeType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "SettleNotLater";

Parameter XMLSEQUENCE = 1;

/// Time after that the FTI should be automatically canceled (if still have not been executed).
Property SettlementTime As Sb.xsd.lt.TimeType(XMLNAME = "SettlementTime") [ Required ];

Storage Default
{
<Data name="SettleNotLaterDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SettlementTime</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.SettleNotLaterD</DataLocation>
<DefaultData>SettleNotLaterDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.SettleNotLaterD</IdLocation>
<IndexLocation>^Sb.xsd.ed.SettleNotLaterI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.SettleNotLaterS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


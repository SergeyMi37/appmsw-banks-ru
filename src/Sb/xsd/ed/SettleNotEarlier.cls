/// "Execute not earlier".
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.SettleNotEarlier Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.SessionIDType, Sb.xsd.lt.TimeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "SettleNotEarlier";

Parameter XMLSEQUENCE = 0;

/// Settlement Cycle Number.
Property SessionID As Sb.xsd.lt.SessionIDType(XMLNAME = "SessionID");

/// Time before that the FTI should not be executed.
Property SettlementTime As Sb.xsd.lt.TimeType(XMLNAME = "SettlementTime");

Storage Default
{
<Data name="SettleNotEarlierDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SessionID</Value>
</Value>
<Value name="3">
<Value>SettlementTime</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.SettleNotEarlierD</DataLocation>
<DefaultData>SettleNotEarlierDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.SettleNotEarlierD</IdLocation>
<IndexLocation>^Sb.xsd.ed.SettleNotEarlierI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.SettleNotEarlierS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


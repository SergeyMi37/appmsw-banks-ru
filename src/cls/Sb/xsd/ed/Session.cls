/// Settlement Cycle Type and Number (Or Settlement Time).
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.Session Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.SessionIDType, Sb.xsd.lt.SessionTypeType, Sb.xsd.lt.TimeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "Session";

Parameter XMLSEQUENCE = 0;

/// Cycle Number.
Property SessionID As Sb.xsd.lt.SessionIDType(XMLNAME = "SessionID");

/// Settlement Time.
Property SettlementTime As Sb.xsd.lt.TimeType(XMLNAME = "SettlementTime");

/// Cycle Type.
Property SessionType As Sb.xsd.lt.SessionTypeType(XMLNAME = "SessionType", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="SessionDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SessionID</Value>
</Value>
<Value name="3">
<Value>SettlementTime</Value>
</Value>
<Value name="4">
<Value>SessionType</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.SessionD</DataLocation>
<DefaultData>SessionDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.SessionD</IdLocation>
<IndexLocation>^Sb.xsd.ed.SessionI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.SessionS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


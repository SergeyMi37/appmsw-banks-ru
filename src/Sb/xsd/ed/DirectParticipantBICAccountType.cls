/// BIC and Account of direct Participant.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.DirectParticipantBICAccountType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "DirectParticipantBICAccountType";

Parameter XMLSEQUENCE = 1;

/// Direct Participant’s BIC.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Direct Participant’s Account.
Property Account As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "Account", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="DirectParticipantBICAccountTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BIC</Value>
</Value>
<Value name="3">
<Value>Account</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.DirectParti88DFD</DataLocation>
<DefaultData>DirectParticipantBICAccountTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.DirectParti88DFD</IdLocation>
<IndexLocation>^Sb.xsd.ed.DirectParti88DFI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.DirectParti88DFS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


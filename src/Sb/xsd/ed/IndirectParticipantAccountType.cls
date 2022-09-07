/// Account of indirect Participant.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.IndirectParticipantAccountType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.AccountNumberRUIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "IndirectParticipantAccountType";

Parameter XMLSEQUENCE = 1;

/// Indirect Participant’s Account.
Property IPAccount As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "IPAccount", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="IndirectParticipantAccountTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>IPAccount</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.IndirectParA276D</DataLocation>
<DefaultData>IndirectParticipantAccountTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.IndirectParA276D</IdLocation>
<IndexLocation>^Sb.xsd.ed.IndirectParA276I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.IndirectParA276S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


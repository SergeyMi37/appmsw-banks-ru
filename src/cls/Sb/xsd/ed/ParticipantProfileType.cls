/// Participant's Private Profile.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ParticipantProfileType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ParticipantProfileType";

Parameter XMLSEQUENCE = 1;

/// Participant Profile Information.
Property ParticipantProfileInfo As Sb.xsd.ed.ParticipantProfileInfoType(XMLNAME = "ParticipantProfileInfo") [ Required ];

/// Participant’s Account Information.
Relationship AccountsInfo As Sb.xsd.ed.AccountsInfoType(XMLNAME = "AccountsInfo", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = ParticipantProfileType ];

Storage Default
{
<Data name="ParticipantProfileTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ParticipantProfileInfo</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.Participant172CD</DataLocation>
<DefaultData>ParticipantProfileTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.Participant172CD</IdLocation>
<IndexLocation>^Sb.xsd.ed.Participant172CI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.Participant172CS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


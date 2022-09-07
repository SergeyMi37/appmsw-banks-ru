/// BIC Directory Entry.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.BICDirectoryEntryExt Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.BICRUIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "BICDirectoryEntryExt";

Parameter XMLSEQUENCE = 1;

/// Information about Participant (from BIC Directory Entry).
Property ParticipantInfo As Sb.xsd.ed.ParticipantInfoType(XMLNAME = "ParticipantInfo") [ Required ];

/// SWIFT BICs of Participant.
Relationship SWBICS As Sb.xsd.ed.SWBICList(XMLNAME = "SWBICS", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = BICDirectoryEntryExt ];

/// Participant’s Accounts information.
Relationship Accounts As Sb.xsd.ed.AccountsType(XMLNAME = "Accounts", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = BICDirectoryEntryExt1 ];

/// Primary account of liquidity pool (LP) OR List of Subordinate Accounts of LP.
Property PoolSPInfo As Sb.xsd.ed.PoolSPInfo(XMLNAME = "PoolSPInfo");

/// Legacy systems information.
Property LegacySystemParticipantInfo As Sb.xsd.ed.LegacySystemParticipantInfoType(XMLNAME = "LegacySystemParticipantInfo");

/// Participant’s BIC.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="BICDirectoryEntryExtDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ParticipantInfo</Value>
</Value>
<Value name="3">
<Value>PoolSPInfo</Value>
</Value>
<Value name="4">
<Value>LegacySystemParticipantInfo</Value>
</Value>
<Value name="5">
<Value>BIC</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.BICDirectorA957D</DataLocation>
<DefaultData>BICDirectoryEntryExtDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.BICDirectorA957D</IdLocation>
<IndexLocation>^Sb.xsd.ed.BICDirectorA957I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.BICDirectorA957S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


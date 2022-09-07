/// BIC Directory Entry.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.BICDirectoryEntryType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.ChangeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "BICDirectoryEntryType";

Parameter XMLSEQUENCE = 1;

/// Information about Participant (from BIC Directory Entry).
Property ParticipantInfo As Sb.xsd.ed.ParticipantInfoType(XMLNAME = "ParticipantInfo") [ Required ];

/// SWIFT BICs of Participant.
Relationship SWBICS As Sb.xsd.ed.SWBICList(XMLNAME = "SWBICS", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = BICDirectoryEntryType ];

/// Participant’s Accounts information.
Relationship Accounts As Sb.xsd.ed.AccountsType(XMLNAME = "Accounts", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = BICDirectoryEntryType1 ];

/// Participant’s BIC.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Type of change in BIC Directory Entry (No changes (NCNG), Entry was changed (CHGD), Entry was added (ADDD).
Property ChangeType As Sb.xsd.lt.ChangeType(XMLNAME = "ChangeType", XMLPROJECTION = "ATTRIBUTE");

Relationship ED807 As Sb.xsd.ed.ED807(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = BICDirectoryEntry ];

Storage Default
{
<Data name="BICDirectoryEntryTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ParticipantInfo</Value>
</Value>
<Value name="3">
<Value>BIC</Value>
</Value>
<Value name="4">
<Value>ChangeType</Value>
</Value>
<Value name="5">
<Value>ED807</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.BICDirectorE97ED</DataLocation>
<DefaultData>BICDirectoryEntryTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.BICDirectorE97ED</IdLocation>
<IndexLocation>^Sb.xsd.ed.BICDirectorE97EI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.BICDirectorE97ES</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


/// Authorized Claim Author.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.AuthorizedClaimAuthorsList Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.ClearingCircuitType, Sb.xsd.lt.EDDrawerIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "AuthorizedClaimAuthorsList";

Parameter XMLSEQUENCE = 0;

/// BIC of Authorized Claim Author.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC");

/// UID of Authorized Claim Author.
Property UID As Sb.xsd.lt.EDDrawerIDType(XMLNAME = "UID");

/// Clearing scheme.
Property ClearingCircuit As Sb.xsd.lt.ClearingCircuitType(XMLNAME = "ClearingCircuit", XMLPROJECTION = "ATTRIBUTE");

Relationship AccountsInfoType2 As Sb.xsd.ed.AccountsInfoType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = AuthorizedClaimAuthors ];

Storage Default
{
<Data name="AuthorizedClaimAuthorsListDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BIC</Value>
</Value>
<Value name="3">
<Value>UID</Value>
</Value>
<Value name="4">
<Value>ClearingCircuit</Value>
</Value>
<Value name="5">
<Value>AccountsInfoType2</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.AuthorizedC6B45D</DataLocation>
<DefaultData>AuthorizedClaimAuthorsListDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.AuthorizedC6B45D</IdLocation>
<IndexLocation>^Sb.xsd.ed.AuthorizedC6B45I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.AuthorizedC6B45S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


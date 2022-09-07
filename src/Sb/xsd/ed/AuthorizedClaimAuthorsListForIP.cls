/// Authorized Claim Author.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.AuthorizedClaimAuthorsListForIP Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.DateType, Sb.xsd.lt.EDDrawerIDType, Sb.xsd.lt.TwoDigitIdentifierType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "AuthorizedClaimAuthorsListForIP";

Parameter XMLSEQUENCE = 0;

/// BIC of Authorized Claim Author.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC");

/// UID of Authorized Claim Author.
Property UID As Sb.xsd.lt.EDDrawerIDType(XMLNAME = "UID");

/// Идентификатор договора.
Property AggrementID As Sb.xsd.lt.TwoDigitIdentifierType(XMLNAME = "AggrementID", XMLPROJECTION = "ATTRIBUTE");

/// Дата окончания действия акцепта.
Property DateTo As Sb.xsd.lt.DateType(XMLNAME = "DateTo", XMLPROJECTION = "ATTRIBUTE");

/// Indirect Account.
Property IPAccount As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "IPAccount", XMLPROJECTION = "ATTRIBUTE");

Relationship ParticipantProfileInfoType1 As Sb.xsd.ed.ParticipantProfileInfoType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = AuthorizedClaimAuthorsForIP ];

Storage Default
{
<Data name="AuthorizedClaimAuthorsListForIPDefaultData">
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
<Value>AggrementID</Value>
</Value>
<Value name="5">
<Value>DateTo</Value>
</Value>
<Value name="6">
<Value>IPAccount</Value>
</Value>
<Value name="7">
<Value>ParticipantProfileInfoType1</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.AuthorizedC87D2D</DataLocation>
<DefaultData>AuthorizedClaimAuthorsListForIPDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.AuthorizedC87D2D</IdLocation>
<IndexLocation>^Sb.xsd.ed.AuthorizedC87D2I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.AuthorizedC87D2S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


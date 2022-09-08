/// List of Accounts (and optionally Clearing Circuits).
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.BICAccCSListType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.DateType, Sb.xsd.lt.TwoDigitIdentifierType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "BICAccCSListType";

Parameter XMLSEQUENCE = 1;

/// National BIC.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE");

/// Account.
Property Account As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "Account", XMLPROJECTION = "ATTRIBUTE");

/// IP National BIC.
Property IPBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "IPBIC", XMLPROJECTION = "ATTRIBUTE");

/// Идентификатор договора.
Property AggrementID As Sb.xsd.lt.TwoDigitIdentifierType(XMLNAME = "AggrementID", XMLPROJECTION = "ATTRIBUTE");

/// Дата окончания действия акцепта.
Property DateTo As Sb.xsd.lt.DateType(XMLNAME = "DateTo", XMLPROJECTION = "ATTRIBUTE");

/// Indirect Account.
Property IPAccount As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "IPAccount", XMLPROJECTION = "ATTRIBUTE");

Relationship ParticipantProfileInfoType As Sb.xsd.ed.ParticipantProfileInfoType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = AccountsAuthorizedForDD ];

Storage Default
{
<Data name="BICAccCSListTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BIC</Value>
</Value>
<Value name="3">
<Value>Account</Value>
</Value>
<Value name="4">
<Value>IPBIC</Value>
</Value>
<Value name="5">
<Value>AggrementID</Value>
</Value>
<Value name="6">
<Value>DateTo</Value>
</Value>
<Value name="7">
<Value>IPAccount</Value>
</Value>
<Value name="8">
<Value>ParticipantProfileInfoType</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.BICAccCSListTypeD</DataLocation>
<DefaultData>BICAccCSListTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.BICAccCSListTypeD</IdLocation>
<IndexLocation>^Sb.xsd.ed.BICAccCSListTypeI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.BICAccCSListTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


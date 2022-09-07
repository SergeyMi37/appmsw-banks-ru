/// Participant’s Accounts information.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.AccountsType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.AccountStatusType, Sb.xsd.lt.AccountType, Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.DateType, Sb.xsd.lt.Eq2TextType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "AccountsType";

Parameter XMLSEQUENCE = 1;

/// Account's Restrictions.
Relationship AccRstrList As Sb.xsd.ed.AccRstrListType(XMLNAME = "AccRstrList", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = AccountsType ];

/// Account Number.
Property Account As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "Account", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Account Type according to regulation.
Property RegulationAccountType As Sb.xsd.lt.AccountType(XMLNAME = "RegulationAccountType", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Control Key.
Property CK As Sb.xsd.lt.Eq2TextType(XMLNAME = "CK", XMLPROJECTION = "ATTRIBUTE");

/// CBR Subdivision serving the account.
Property AccountCBRBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "AccountCBRBIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Account’s Open Date.
Property DateIn As Sb.xsd.lt.DateType(XMLNAME = "DateIn", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Account’s Close Date.
Property DateOut As Sb.xsd.lt.DateType(XMLNAME = "DateOut", XMLPROJECTION = "ATTRIBUTE");

/// Account Status.
Property AccountStatus As Sb.xsd.lt.AccountStatusType(XMLNAME = "AccountStatus", XMLPROJECTION = "ATTRIBUTE");

Relationship BICDirectoryEntryType1 As Sb.xsd.ed.BICDirectoryEntryType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = Accounts ];

Relationship BICDirectoryEntryExt1 As Sb.xsd.ed.BICDirectoryEntryExt(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = Accounts ];

Relationship IPInfo1 As Sb.xsd.ed.IPInfo(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = Accounts ];

Storage Default
{
<Data name="AccountsTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Account</Value>
</Value>
<Value name="3">
<Value>RegulationAccountType</Value>
</Value>
<Value name="4">
<Value>CK</Value>
</Value>
<Value name="5">
<Value>AccountCBRBIC</Value>
</Value>
<Value name="6">
<Value>DateIn</Value>
</Value>
<Value name="7">
<Value>DateOut</Value>
</Value>
<Value name="8">
<Value>AccountStatus</Value>
</Value>
<Value name="9">
<Value>BICDirectoryEntryType1</Value>
</Value>
<Value name="10">
<Value>BICDirectoryEntryExt1</Value>
</Value>
<Value name="11">
<Value>IPInfo1</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.AccountsTypeD</DataLocation>
<DefaultData>AccountsTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.AccountsTypeD</IdLocation>
<IndexLocation>^Sb.xsd.ed.AccountsTypeI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.AccountsTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


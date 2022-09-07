/// Participant’s Account Information.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.AccountsInfoType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.AccountType, Sb.xsd.lt.DateType, Sb.xsd.lt.IndicatorType, Sb.xsd.lt.Max2TextType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "AccountsInfoType";

Parameter XMLSEQUENCE = 1;

/// Intraday restrictions on an account.
Property AccIntradayRestrictions As Sb.xsd.ed.AccIntradayRestrictions(XMLNAME = "AccIntradayRestrictions");

/// Additional information for “Pending deletion” restriction.
Property PendingDeletionInfo As Sb.xsd.ed.PendingDeletionInfo(XMLNAME = "PendingDeletionInfo");

/// Balance Sweeping Destination Account.
Property BalanceSweepingAccount As Sb.xsd.ed.BalanceSweepingAccount(XMLNAME = "BalanceSweepingAccount");

/// Primary account of liquidity pool (LP) OR List of Subordinate Accounts of LP.
Property PoolSPInfo As Sb.xsd.ed.PoolSPInfo(XMLNAME = "PoolSPInfo");

/// Indirect Participant Info.
/// Indirect Participant Info.
/// Информация о БИК и счетах косвенных участников.
Relationship IPInfo As Sb.xsd.ed.IPBICAccListType(XMLITEMNAME = "IPBICAccList", XMLNAME = "IPInfo", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = AccountsInfoType ];

/// Participant Limits Information.
/// Value and Usage of Limits.
/// Value and Usage of Limit.
Relationship LimitsInfo As Sb.xsd.ed.LimitInfoType(XMLITEMNAME = "LimitInfo", XMLNAME = "LimitsInfo", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = AccountsInfoType1 ];

/// Authorized Claim Authors List.
/// Authorized Claim Authors List.
/// Authorized Claim Author.
Relationship AuthorizedClaimAuthors As Sb.xsd.ed.AuthorizedClaimAuthorsList(XMLITEMNAME = "AuthorizedClaimAuthorsList", XMLNAME = "AuthorizedClaimAuthors", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = AccountsInfoType2 ];

/// Arrests/Limitations Info.
/// Arrests/Limitations Info.
/// List of Arrests/Limitations.
Relationship ArrestsInfo As Sb.xsd.ed.ArrestDetailedInfo(XMLITEMNAME = "ArrestDetailedInfo", XMLNAME = "ArrestsInfo", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = AccountsInfoType3 ];

/// Account Number.
Property Account As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "Account", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Account Type.
Property AccountType As Sb.xsd.lt.AccountType(XMLNAME = "AccountType", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Scheduled date of account’s deletion.
Property DateOfDeletion As Sb.xsd.lt.DateType(XMLNAME = "DateOfDeletion", XMLPROJECTION = "ATTRIBUTE");

/// Default Terminal ID for Account.
Property DefaultARMNo As Sb.xsd.lt.Max2TextType(XMLNAME = "DefaultARMNo", XMLPROJECTION = "ATTRIBUTE");

/// Corresp Account usage in FTS.
Property UseCorrespAccInFTS As Sb.xsd.lt.IndicatorType(XMLNAME = "UseCorrespAccInFTS", XMLPROJECTION = "ATTRIBUTE");

Relationship ParticipantProfileType As Sb.xsd.ed.ParticipantProfileType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = AccountsInfo ];

Storage Default
{
<Data name="AccountsInfoTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>AccIntradayRestrictions</Value>
</Value>
<Value name="3">
<Value>PendingDeletionInfo</Value>
</Value>
<Value name="4">
<Value>BalanceSweepingAccount</Value>
</Value>
<Value name="5">
<Value>PoolSPInfo</Value>
</Value>
<Value name="6">
<Value>Account</Value>
</Value>
<Value name="7">
<Value>AccountType</Value>
</Value>
<Value name="8">
<Value>DateOfDeletion</Value>
</Value>
<Value name="9">
<Value>DefaultARMNo</Value>
</Value>
<Value name="10">
<Value>UseCorrespAccInFTS</Value>
</Value>
<Value name="11">
<Value>ParticipantProfileType</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.AccountsInfoTypeD</DataLocation>
<DefaultData>AccountsInfoTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.AccountsInfoTypeD</IdLocation>
<IndexLocation>^Sb.xsd.ed.AccountsInfoTypeI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.AccountsInfoTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


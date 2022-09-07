/// Participant Profile Information.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ParticipantProfileInfoType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.Max2TextType, Sb.xsd.lt.OneDigitCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ParticipantProfileInfoType";

Parameter XMLSEQUENCE = 1;

/// BIC of Authorized sender Or List of BICs of Banks using Authorized sender to communicate with NPS.
Property UFCFInfo As Sb.xsd.ed.UFCFInfo(XMLNAME = "UFCFInfo");

/// Intraday Restrictions applied to Participants.
Property IntradayRestrictions As Sb.xsd.ed.IntradayRestrictions(XMLNAME = "IntradayRestrictions");

/// Participant’s Attributes.
Property ParticipantAttributes As Sb.xsd.ed.ParticipantAttributes(XMLNAME = "ParticipantAttributes") [ Required ];

/// EPS Attributes.
Property EPSInfo As Sb.xsd.ed.EPSInfo(XMLNAME = "EPSInfo");

/// List of Accounts authorized for direct debit (If this Participant if Authorized Claims Author).
/// List of Accounts (and optionally Clearing Circuits).
/// List of Accounts.
Relationship AccountsAuthorizedForDD As Sb.xsd.ed.BICAccCSListType(XMLITEMNAME = "AccountsList", XMLNAME = "AccountsAuthorizedForDD", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = ParticipantProfileInfoType ];

/// Authorized Claim Authors List For Indirect Participant.
/// Authorized Claim Authors List For Indirect Participant.
/// Authorized Claim Author.
Relationship AuthorizedClaimAuthorsForIP As Sb.xsd.ed.AuthorizedClaimAuthorsListForIP(XMLITEMNAME = "AuthorizedClaimAuthorsListForIP", XMLNAME = "AuthorizedClaimAuthorsForIP", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = ParticipantProfileInfoType1 ];

/// Participant Limits Information.
/// Value and Usage of Limits.
/// Value and Usage of Limit.
Relationship LimitsInfo As Sb.xsd.ed.LimitInfoType(XMLITEMNAME = "LimitInfo", XMLNAME = "LimitsInfo", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = ParticipantProfileInfoType2 ];

/// Direct Participant Info.
Property DirectParticipantBICAccount As Sb.xsd.ed.DirectParticipantBICAccountType(XMLNAME = "DirectParticipantBICAccount");

/// Participant type according to regulation.
Property PtType As Sb.xsd.lt.Max2TextType(XMLNAME = "PtType", XMLPROJECTION = "ATTRIBUTE");

/// BIC of CBR Subdivision servicing Participant.
Property ServCBRBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "ServCBRBIC", XMLPROJECTION = "ATTRIBUTE");

/// Default Terminal ID for Participant.
Property DefaultARMNo As Sb.xsd.lt.Max2TextType(XMLNAME = "DefaultARMNo", XMLPROJECTION = "ATTRIBUTE");

/// Indicator of primary interaction channel with NPS.
Property ChannelMode As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "ChannelMode", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "3", ReadOnly ];

Storage Default
{
<Data name="ParticipantProfileInfoTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>UFCFInfo</Value>
</Value>
<Value name="3">
<Value>IntradayRestrictions</Value>
</Value>
<Value name="4">
<Value>ParticipantAttributes</Value>
</Value>
<Value name="5">
<Value>EPSInfo</Value>
</Value>
<Value name="6">
<Value>DirectParticipantBICAccount</Value>
</Value>
<Value name="7">
<Value>PtType</Value>
</Value>
<Value name="8">
<Value>ServCBRBIC</Value>
</Value>
<Value name="9">
<Value>DefaultARMNo</Value>
</Value>
<Value name="10">
<Value>ChannelMode</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.ParticipantF5A1D</DataLocation>
<DefaultData>ParticipantProfileInfoTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.ParticipantF5A1D</IdLocation>
<IndexLocation>^Sb.xsd.ed.ParticipantF5A1I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.ParticipantF5A1S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


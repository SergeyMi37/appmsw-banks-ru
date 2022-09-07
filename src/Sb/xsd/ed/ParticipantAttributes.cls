/// Participant’s Attributes.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ParticipantAttributes Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.IndicatorType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ParticipantAttributes";

Parameter XMLSEQUENCE = 1;

/// Attribute “Can be the author of a confirmation message under the liquidity reservation scheme”.
Property CanBeAuthorOfConfLiqRsrv As Sb.xsd.lt.IndicatorType(XMLNAME = "CanBeAuthorOfConfLiqRsrv", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Attribute “Can be an Author of FTI under the liquidity reservation scheme”.
Property CanBeAuthorOfLiqRsrv As Sb.xsd.lt.IndicatorType(XMLNAME = "CanBeAuthorOfLiqRsrv", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Attribute “Can be an Author of FTI using cover funds”.
Property CanBeAuthorOfCover As Sb.xsd.lt.IndicatorType(XMLNAME = "CanBeAuthorOfCover", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Attribute “Can be an Author debit transfers” (Boolean): whether this participant is allowed to be an Author of FTI's which represent either a collection order or a direct debit instruction sent under the debit transfer flow”.
Property CanSendDD As Sb.xsd.lt.IndicatorType(XMLNAME = "CanSendDD", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="ParticipantAttributesDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CanBeAuthorOfConfLiqRsrv</Value>
</Value>
<Value name="3">
<Value>CanBeAuthorOfLiqRsrv</Value>
</Value>
<Value name="4">
<Value>CanBeAuthorOfCover</Value>
</Value>
<Value name="5">
<Value>CanSendDD</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.ParticipantA81BD</DataLocation>
<DefaultData>ParticipantAttributesDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.ParticipantA81BD</IdLocation>
<IndexLocation>^Sb.xsd.ed.ParticipantA81BI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.ParticipantA81BS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


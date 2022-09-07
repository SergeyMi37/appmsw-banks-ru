/// Intraday Restrictions applied to Participants.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.IntradayRestrictions Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "IntradayRestrictions";

Parameter XMLSEQUENCE = 1;

/// Stop providing urgent fund transfer service.
Property StopUrgentFTS As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "StopUrgentFTS");

/// Stop sending FTI's.
Property StopSendFTI As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "StopSendFTI");

/// Restriction of exchange with electronic messages.
Property StopSendRecvEM As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "StopSendRecvEM");

/// Creditors requirements moratorium.
Property CreditorsRequirementsMoratorium As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "CreditorsRequirementsMoratorium");

/// Pending deletion.
Property PendingDeletion As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "PendingDeletion");

Storage Default
{
<Data name="IntradayRestrictionsDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>StopUrgentFTS</Value>
</Value>
<Value name="3">
<Value>StopSendFTI</Value>
</Value>
<Value name="4">
<Value>StopSendRecvEM</Value>
</Value>
<Value name="5">
<Value>CreditorsRequirementsMoratorium</Value>
</Value>
<Value name="6">
<Value>PendingDeletion</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.IntradayResA743D</DataLocation>
<DefaultData>IntradayRestrictionsDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.IntradayResA743D</IdLocation>
<IndexLocation>^Sb.xsd.ed.IntradayResA743I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.IntradayResA743S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


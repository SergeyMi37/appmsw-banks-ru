/// Intraday restrictions on an account.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.AccIntradayRestrictions Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "AccIntradayRestrictions";

Parameter XMLSEQUENCE = 1;

/// Stop send FTI.
Property StopSendFTI As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "StopSendFTI");

/// Stop credits.
Property StopCredits As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "StopCredits");

/// Stop providing urgent fund transfer service.
Property StopUrgentFTS As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "StopUrgentFTS");

/// Suspend send and receive EM.
Property SuspendSendRecvEM As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "SuspendSendRecvEM");

/// Stop debits.
Property StopDebits As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "StopDebits");

/// Stop FPS.
Property StopFPS As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "StopFPS");

/// Liquidity Accumulate.
Property LiquidAccumulate As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "LiquidAccumulate");

/// Pending deletion.
Property PendingDeletion As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "PendingDeletion");

/// Route credits to serving CBR subdivision.
Property RouteToCBR As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "RouteToCBR");

/// Manual verification mode.
Property ManualVerifMode As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "ManualVerifMode");

/// Arrest or limitation for indeterminate amount.
Property Arrest As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "Arrest");

/// The system shall support a “special mode” attribute, which shall apply at the account level.
Property SpecialMode As Sb.xsd.ed.IntradayRestrictionsType(XMLNAME = "SpecialMode");

Storage Default
{
<Data name="AccIntradayRestrictionsDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>StopSendFTI</Value>
</Value>
<Value name="3">
<Value>StopCredits</Value>
</Value>
<Value name="4">
<Value>StopUrgentFTS</Value>
</Value>
<Value name="5">
<Value>SuspendSendRecvEM</Value>
</Value>
<Value name="6">
<Value>StopDebits</Value>
</Value>
<Value name="7">
<Value>StopFPS</Value>
</Value>
<Value name="8">
<Value>LiquidAccumulate</Value>
</Value>
<Value name="9">
<Value>PendingDeletion</Value>
</Value>
<Value name="10">
<Value>RouteToCBR</Value>
</Value>
<Value name="11">
<Value>ManualVerifMode</Value>
</Value>
<Value name="12">
<Value>Arrest</Value>
</Value>
<Value name="13">
<Value>SpecialMode</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.AccIntradayA6F5D</DataLocation>
<DefaultData>AccIntradayRestrictionsDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.AccIntradayA6F5D</IdLocation>
<IndexLocation>^Sb.xsd.ed.AccIntradayA6F5I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.AccIntradayA6F5S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


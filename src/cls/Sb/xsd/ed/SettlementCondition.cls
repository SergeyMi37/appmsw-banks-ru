/// Payment Settlement Condition Attributes.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.SettlementCondition Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.ConditionCodeType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "SettlementCondition";

Parameter XMLSEQUENCE = 0;

/// Condition Parameters.
Property LiquidityReservationSchemeParameters As Sb.xsd.ed.LiquidityReservationSchemeParameters(XMLNAME = "LiquidityReservationSchemeParameters");

/// Condition Parameters.
Property CoverFundsSchemeParameters As Sb.xsd.ed.CoverFundsSchemeParameters(XMLNAME = "CoverFundsSchemeParameters");

/// Condition Parameters.
Property RCPSchemeParameters As Sb.xsd.ed.RCPSchemeParameters(XMLNAME = "RCPSchemeParameters");

/// Condition Code.
Property ConditionCode As Sb.xsd.lt.ConditionCodeType(XMLNAME = "ConditionCode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="SettlementConditionDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>LiquidityReservationSchemeParameters</Value>
</Value>
<Value name="3">
<Value>CoverFundsSchemeParameters</Value>
</Value>
<Value name="4">
<Value>RCPSchemeParameters</Value>
</Value>
<Value name="5">
<Value>ConditionCode</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.SettlementConditionD</DataLocation>
<DefaultData>SettlementConditionDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.SettlementConditionD</IdLocation>
<IndexLocation>^Sb.xsd.ed.SettlementConditionI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.SettlementConditionS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


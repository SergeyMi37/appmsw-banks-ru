/// Condition Parameters.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.LiquidityReservationSchemeParameters Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.EDDrawerIDType, Sb.xsd.lt.IndicatorType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "LiquidityReservationSchemeParameters";

Parameter XMLSEQUENCE = 1;

/// EM Author Unique System Identifier of confirmation message author if differs from initial FTI's author.
Property ConfirmationMessageAuthor As Sb.xsd.lt.EDDrawerIDType(XMLNAME = "ConfirmationMessageAuthor", XMLPROJECTION = "ATTRIBUTE");

/// Indication that Initial FTI's must be immediately canceled if luquidity reserving can not be immediately executed (cash funds insuficiency).
Property CancelIfNotReserved As Sb.xsd.lt.IndicatorType(XMLNAME = "CancelIfNotReserved", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="LiquidityReservationSchemeParametersDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ConfirmationMessageAuthor</Value>
</Value>
<Value name="3">
<Value>CancelIfNotReserved</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.LiquidityReE749D</DataLocation>
<DefaultData>LiquidityReservationSchemeParametersDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.LiquidityReE749D</IdLocation>
<IndexLocation>^Sb.xsd.ed.LiquidityReE749I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.LiquidityReE749S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


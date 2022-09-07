/// Reservation Information.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ReservationInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.NotNegativeKopeckAmountType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ReservationInfo";

Parameter XMLSEQUENCE = 1;

/// Total Amount of liquidity reservation on account, except for reservation related to cash withdrawal.
Property NonCashReservedSum As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "NonCashReservedSum", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Total Amount of liquidity reservation on account related to cash withdrawal.
Property CashReservedSum As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "CashReservedSum", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="ReservationInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>NonCashReservedSum</Value>
</Value>
<Value name="3">
<Value>CashReservedSum</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.ReservationInfoD</DataLocation>
<DefaultData>ReservationInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.ReservationInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.ReservationInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.ReservationInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}


/// Базовый комплексный тип для всех электронных платежных сообщений. Содержит реквизиты, общие для всех типов ЭПС.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.EPDComplete Extends Sb.xsd.ed.ED [ CompileAfter = (Sb.xsd.lt.DateType, Sb.xsd.lt.EDDrawerIDType, Sb.xsd.lt.KopeckAmountType, Sb.xsd.lt.OneDigitCodeType, Sb.xsd.lt.TwoDigitCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "EPDComplete";

Parameter XMLSEQUENCE = 1;

/// "Execute not earlier".
Property SettleNotEarlier As Sb.xsd.ed.SettleNotEarlier(XMLNAME = "SettleNotEarlier");

/// "Execute not later than".
Property SettleNotLater As Sb.xsd.ed.SettleNotLater(XMLNAME = "SettleNotLater");

/// Initial Paper Settlement Document Attributes (fields 3 and 4).
Property AccDoc As Sb.xsd.ed.AccDocRefID(XMLNAME = "AccDoc") [ Required ];

/// Payer Attributes.
Property Payer As Sb.xsd.ed.PayerRU(XMLNAME = "Payer") [ Required ];

/// Beneficiary Attributes.
Property Payee As Sb.xsd.ed.PayeeRU(XMLNAME = "Payee") [ Required ];

/// EM Receiver Unique Identifier.
Property EDReceiver As Sb.xsd.lt.EDDrawerIDType(XMLNAME = "EDReceiver", XMLPROJECTION = "ATTRIBUTE");

/// FTI's Type (Field 5).
Property PaytKind As Sb.xsd.lt.OneDigitCodeType(XMLNAME = "PaytKind", XMLPROJECTION = "ATTRIBUTE");

/// Amount (Field 7).
Property Sum As Sb.xsd.lt.KopeckAmountType(XMLNAME = "Sum", XMLPROJECTION = "ATTRIBUTE") [ Required, SqlFieldName = _Sum ];

/// Payment Priority.
Property PaymentPrecedence As Sb.xsd.lt.TwoDigitCodeType(XMLNAME = "PaymentPrecedence", XMLPROJECTION = "ATTRIBUTE");

/// Requested Setllement Date.
Property ReqSettlementDate As Sb.xsd.lt.DateType(XMLNAME = "ReqSettlementDate", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="EPDCompleteDefaultData">
<Subscript>"EPDComplete"</Subscript>
<Value name="1">
<Value>SettleNotEarlier</Value>
</Value>
<Value name="2">
<Value>SettleNotLater</Value>
</Value>
<Value name="3">
<Value>AccDoc</Value>
</Value>
<Value name="4">
<Value>Payer</Value>
</Value>
<Value name="5">
<Value>Payee</Value>
</Value>
<Value name="6">
<Value>EDReceiver</Value>
</Value>
<Value name="7">
<Value>PaytKind</Value>
</Value>
<Value name="8">
<Value>Sum</Value>
</Value>
<Value name="9">
<Value>PaymentPrecedence</Value>
</Value>
<Value name="10">
<Value>ReqSettlementDate</Value>
</Value>
</Data>
<DefaultData>EPDCompleteDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}


/// Реквизиты получателя
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.PayeeInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.EDDrawerIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "PayeeInfo";

Parameter XMLSEQUENCE = 1;

/// Максимальная сумма платежа на счет получателя
Property MaxPaytSum As Sb.xsd.ed.SumWithUnlimit(XMLNAME = "MaxPaytSum");

/// Общая сумма платежей, предъявляемых этим получателем к счету плательщика в течение ОД
Property TotalPaytsSum As Sb.xsd.ed.SumWithUnlimit(XMLNAME = "TotalPaytsSum");

/// Список счетов для ПУР-получателя.
Relationship PayeeAccInfo As Sb.xsd.ed.PayeeAccInfo(XMLNAME = "PayeeAccInfo", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = PayeeInfo ];

/// БИК получателя
Property PayeeBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "PayeeBIC", XMLPROJECTION = "ATTRIBUTE");

/// Уникальный идентификатор, присвоенный получателю ЭС.
Property PayeeUIS As Sb.xsd.lt.EDDrawerIDType(XMLNAME = "PayeeUIS", XMLPROJECTION = "ATTRIBUTE");

Relationship RTGSCustomerInfo3 As Sb.xsd.ed.RTGSCustomerInfo(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = PayeeInfo ];

Storage Default
{
<Data name="PayeeInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>MaxPaytSum</Value>
</Value>
<Value name="3">
<Value>TotalPaytsSum</Value>
</Value>
<Value name="4">
<Value>PayeeBIC</Value>
</Value>
<Value name="5">
<Value>PayeeUIS</Value>
</Value>
<Value name="6">
<Value>RTGSCustomerInfo3</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.PayeeInfoD</DataLocation>
<DefaultData>PayeeInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.PayeeInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.PayeeInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.PayeeInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

